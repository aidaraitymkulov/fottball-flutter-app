import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../domain/competitions_providers.dart';

class CompetitionScreen extends ConsumerWidget {
  final String code;
  final String name;

  const CompetitionScreen({super.key, required this.code, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(name),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Таблица'),
              Tab(text: 'Матчи'),
              Tab(text: 'Команды'),
              Tab(text: 'Бомбардиры'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _StandingsTab(code: code),
            _MatchesTab(code: code),
            _TeamsTab(code: code),
            _ScorersTab(code: code),
          ],
        ),
      ),
    );
  }
}

class _StandingsTab extends ConsumerWidget {
  final String code;
  const _StandingsTab({required this.code});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final standingsAsync = ref.watch(standingsProvider(code));

    return standingsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Ошибка: $e')),
      data: (rows) => ListView.builder(
        itemCount: rows.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const _StandingsHeader();
          }
          final row = rows[index - 1];
          return InkWell(
            onTap: () => context.push(
              '/team/${row.team.id}?name=${Uri.encodeComponent(row.team.name)}',
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    child: Text(
                      '${row.position}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  if (row.team.crest != null)
                    CachedNetworkImage(
                      imageUrl: row.team.crest!,
                      width: 24,
                      height: 24,
                      errorWidget: (context, url, error) => const SizedBox(width: 24),
                    )
                  else
                    const SizedBox(width: 24),
                  const SizedBox(width: 8),
                  Expanded(child: Text(row.team.shortName ?? row.team.name)),
                  SizedBox(width: 28, child: Text('${row.playedGames}', textAlign: TextAlign.center)),
                  SizedBox(width: 28, child: Text('${row.won}', textAlign: TextAlign.center)),
                  SizedBox(width: 28, child: Text('${row.draw}', textAlign: TextAlign.center)),
                  SizedBox(width: 28, child: Text('${row.lost}', textAlign: TextAlign.center)),
                  SizedBox(width: 36, child: Text('${row.goalDifference}', textAlign: TextAlign.center)),
                  SizedBox(
                    width: 36,
                    child: Text(
                      '${row.points}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _StandingsHeader extends StatelessWidget {
  const _StandingsHeader();

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: 11,
      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          const SizedBox(width: 24),
          const SizedBox(width: 24),
          const SizedBox(width: 8),
          const Expanded(child: SizedBox()),
          SizedBox(width: 28, child: Text('И', textAlign: TextAlign.center, style: style)),
          SizedBox(width: 28, child: Text('В', textAlign: TextAlign.center, style: style)),
          SizedBox(width: 28, child: Text('Н', textAlign: TextAlign.center, style: style)),
          SizedBox(width: 28, child: Text('П', textAlign: TextAlign.center, style: style)),
          SizedBox(width: 36, child: Text('ГР', textAlign: TextAlign.center, style: style)),
          SizedBox(width: 36, child: Text('О', textAlign: TextAlign.center, style: style)),
        ],
      ),
    );
  }
}

class _MatchesTab extends ConsumerWidget {
  final String code;
  const _MatchesTab({required this.code});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchesAsync = ref.watch(competitionMatchesProvider(code));

    return matchesAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Ошибка: $e')),
      data: (matches) => ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final m = matches[index];
          final home = m.score.fullTime?.home;
          final away = m.score.fullTime?.away;
          final isFinished = m.status == 'FINISHED';

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () => context.push('/match/${m.id}'),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        m.homeTeam.shortName ?? m.homeTeam.name,
                        textAlign: TextAlign.end,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        isFinished ? '$home : $away' : 'vs',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(m.awayTeam.shortName ?? m.awayTeam.name),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _TeamsTab extends ConsumerWidget {
  final String code;
  const _TeamsTab({required this.code});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamsAsync = ref.watch(competitionTeamsProvider(code));

    return teamsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Ошибка: $e')),
      data: (teams) => GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.85,
        ),
        itemCount: teams.length,
        itemBuilder: (context, index) {
          final team = teams[index];
          return GestureDetector(
            onTap: () => context.push(
              '/team/${team.id}?name=${Uri.encodeComponent(team.name)}',
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (team.crest != null)
                  CachedNetworkImage(
                    imageUrl: team.crest!,
                    width: 56,
                    height: 56,
                    errorWidget: (context, url, error) => const Icon(Icons.shield, size: 56),
                  )
                else
                  const Icon(Icons.shield, size: 56),
                const SizedBox(height: 6),
                Text(
                  team.shortName ?? team.name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// ── Бомбардиры ───────────────────────────────────────────────────────────────

class _ScorersTab extends ConsumerWidget {
  final String code;
  const _ScorersTab({required this.code});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scorersAsync = ref.watch(scorersProvider(code));

    return scorersAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Ошибка: $e')),
      data: (scorers) => ListView.builder(
        itemCount: scorers.length,
        itemBuilder: (context, index) {
          final s = scorers[index];
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(s.player.name),
            subtitle: Text(s.team.name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.sports_soccer, size: 16),
                const SizedBox(width: 4),
                Text(
                  '${s.goals ?? 0}',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            onTap: () => context.push(
              '/player/${s.player.id}?name=${Uri.encodeComponent(s.player.name)}',
            ),
          );
        },
      ),
    );
  }
}
