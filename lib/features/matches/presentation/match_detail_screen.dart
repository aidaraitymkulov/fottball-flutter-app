import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../domain/matches_providers.dart';
import '../domain/match.dart';

class MatchDetailScreen extends ConsumerWidget {
  final int matchId;

  const MatchDetailScreen({super.key, required this.matchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchAsync = ref.watch(matchProvider(matchId));

    return Scaffold(
      appBar: AppBar(title: const Text('Матч')),
      body: matchAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Ошибка: $e')),
        data: (match) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _ScoreCard(match: match),
            const SizedBox(height: 16),
            if (match.goals.isNotEmpty) ...[
              _SectionTitle('Голы'),
              ...match.goals.map((g) => _GoalTile(goal: g)),
              const SizedBox(height: 16),
            ],
            if (match.bookings.isNotEmpty) ...[
              _SectionTitle('Карточки'),
              ...match.bookings.map((b) => _BookingTile(booking: b)),
              const SizedBox(height: 16),
            ],
            if (match.substitutions.isNotEmpty) ...[
              _SectionTitle('Замены'),
              ...match.substitutions.map((s) => _SubstitutionTile(sub: s)),
            ],
          ],
        ),
      ),
    );
  }
}

// ── Счёт ─────────────────────────────────────────────────────────────────────

class _ScoreCard extends StatelessWidget {
  final FootballMatch match;
  const _ScoreCard({required this.match});

  @override
  Widget build(BuildContext context) {
    final home = match.score.fullTime?.home;
    final away = match.score.fullTime?.away;
    final isFinished = match.status == 'FINISHED';

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(child: _TeamColumn(team: match.homeTeam)),
            Column(
              children: [
                Text(
                  isFinished ? '$home : $away' : 'vs',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  match.status,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                if (match.score.halfTime?.home != null)
                  Text(
                    'Тайм: ${match.score.halfTime!.home} : ${match.score.halfTime!.away}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
              ],
            ),
            Expanded(child: _TeamColumn(team: match.awayTeam, rightAlign: true)),
          ],
        ),
      ),
    );
  }
}

class _TeamColumn extends StatelessWidget {
  final MatchTeam team;
  final bool rightAlign;
  const _TeamColumn({required this.team, this.rightAlign = false});

  @override
  Widget build(BuildContext context) {
    final children = [
      if (team.crest != null)
        CachedNetworkImage(
          imageUrl: team.crest!,
          width: 48,
          height: 48,
          errorWidget: (ctx, url, err) => const Icon(Icons.shield, size: 48),
        )
      else
        const Icon(Icons.shield, size: 48),
      const SizedBox(height: 8),
      Text(
        team.shortName ?? team.name,
        textAlign: rightAlign ? TextAlign.right : TextAlign.left,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    ];

    return Column(
      crossAxisAlignment:
          rightAlign ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: children,
    );
  }
}

// ── Голы ─────────────────────────────────────────────────────────────────────

class _GoalTile extends StatelessWidget {
  final Goal goal;
  const _GoalTile({required this.goal});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.sports_soccer),
      title: Text(goal.scorer?.name ?? '—'),
      subtitle: goal.assist?.name != null ? Text('Ас.: ${goal.assist!.name}') : null,
      trailing: Text("${goal.minute ?? '?'}'"),
    );
  }
}

// ── Карточки ─────────────────────────────────────────────────────────────────

class _BookingTile extends StatelessWidget {
  final Booking booking;
  const _BookingTile({required this.booking});

  @override
  Widget build(BuildContext context) {
    final isRed = booking.card == 'RED' || booking.card == 'YELLOW_RED';
    return ListTile(
      leading: Icon(
        Icons.rectangle,
        color: isRed ? Colors.red : Colors.yellow[700],
      ),
      title: Text(booking.player?.name ?? '—'),
      subtitle: Text(booking.team?.name ?? ''),
      trailing: Text("${booking.minute ?? '?'}'"),
    );
  }
}

// ── Замены ───────────────────────────────────────────────────────────────────

class _SubstitutionTile extends StatelessWidget {
  final Substitution sub;
  const _SubstitutionTile({required this.sub});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.swap_horiz),
      title: Row(
        children: [
          const Icon(Icons.arrow_upward, color: Colors.green, size: 16),
          const SizedBox(width: 4),
          Text(sub.playerIn?.name ?? '—'),
        ],
      ),
      subtitle: Row(
        children: [
          const Icon(Icons.arrow_downward, color: Colors.red, size: 16),
          const SizedBox(width: 4),
          Text(sub.playerOut?.name ?? '—'),
        ],
      ),
      trailing: Text("${sub.minute ?? '?'}'"),
    );
  }
}

// ── Заголовок секции ──────────────────────────────────────────────────────────

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
