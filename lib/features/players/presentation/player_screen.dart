import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/players_providers.dart';

class PlayerScreen extends ConsumerWidget {
  final int playerId;
  final String playerName;

  const PlayerScreen({super.key, required this.playerId, required this.playerName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(playerName),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Профиль'),
              Tab(text: 'Матчи'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _ProfileTab(playerId: playerId),
            _MatchesTab(playerId: playerId),
          ],
        ),
      ),
    );
  }
}

class _ProfileTab extends ConsumerWidget {
  final int playerId;
  const _ProfileTab({required this.playerId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(playerProfileProvider(playerId));

    return profileAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Ошибка: $e')),
      data: (p) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (p.currentTeam?.crest != null)
            Center(
              child: CachedNetworkImage(
                imageUrl: p.currentTeam!.crest!,
                width: 72,
                height: 72,
                errorWidget: (context, url, error) =>
                    const Icon(Icons.shield, size: 72),
              ),
            ),
          const SizedBox(height: 8),
          if (p.currentTeam != null)
            Center(
              child: Text(
                p.currentTeam!.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          const Divider(height: 32),

          if (p.section != null || p.position != null)
            _InfoRow(label: 'Позиция', value: '${p.section ?? ''} (${p.position ?? '—'})'),
          if (p.shirtNumber != null)
            _InfoRow(label: 'Номер', value: '${p.shirtNumber}'),
          if (p.dateOfBirth != null)
            _InfoRow(label: 'Дата рождения', value: p.dateOfBirth!),
          if (p.nationality != null)
            _InfoRow(label: 'Национальность', value: p.nationality!),
          if (p.currentTeam != null)
            _InfoRow(label: 'Клуб', value: p.currentTeam!.name),
          if (p.currentTeam?.venue != null)
            _InfoRow(label: 'Стадион', value: p.currentTeam!.venue!),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

class _MatchesTab extends ConsumerWidget {
  final int playerId;
  const _MatchesTab({required this.playerId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchesAsync = ref.watch(playerMatchesProvider(playerId));

    return matchesAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Ошибка: $e')),
      data: (matches) {
        if (matches.isEmpty) {
          return const Center(child: Text('Нет данных о матчах'));
        }
        return ListView.builder(
          itemCount: matches.length,
          itemBuilder: (context, index) {
            final m = matches[index];
            final home = m.score.fullTime?.home;
            final away = m.score.fullTime?.away;
            final isFinished = m.status == 'FINISHED';

            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
            );
          },
        );
      },
    );
  }
}
