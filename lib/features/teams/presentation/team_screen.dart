import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../domain/teams_providers.dart';

class TeamScreen extends ConsumerWidget {
  final int teamId;
  final String teamName;

  const TeamScreen({super.key, required this.teamId, required this.teamName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamAsync = ref.watch(teamProvider(teamId));

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(teamName),
          bottom: const TabBar(
            tabs: [Tab(text: 'Состав'), Tab(text: 'Матчи')],
          ),
        ),
        body: teamAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text('Ошибка: $e')),
          data: (team) => TabBarView(
            children: [
              // Вкладка: состав
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          if (team.crest != null)
                            CachedNetworkImage(
                              imageUrl: team.crest!,
                              width: 80,
                              height: 80,
                            ),
                          const SizedBox(height: 12),
                          if (team.venue != null)
                            Text(team.venue!, style: const TextStyle(fontSize: 14)),
                          if (team.founded != null)
                            Text('Основан: ${team.founded}'),
                          if (team.clubColors != null)
                            Text('Цвета: ${team.clubColors}'),
                          if (team.coach != null)
                            Text('Тренер: ${team.coach!.name ?? '—'}'),
                          const Divider(height: 24),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final player = team.squad[index];
                        return ListTile(
                          title: Text(player.name),
                          subtitle: Text(player.position ?? '—'),
                          trailing: Text(player.nationality ?? ''),
                          onTap: () => context.push(
                            '/player/${player.id}?name=${Uri.encodeComponent(player.name)}',
                          ),
                        );
                      },
                      childCount: team.squad.length,
                    ),
                  ),
                ],
              ),

              // Вкладка: матчи
              _TeamMatchesTab(teamId: teamId),
            ],
          ),
        ),
      ),
    );
  }
}

class _TeamMatchesTab extends ConsumerWidget {
  final int teamId;
  const _TeamMatchesTab({required this.teamId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchesAsync = ref.watch(teamMatchesProvider(teamId));

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
                    Expanded(child: Text(m.awayTeam.shortName ?? m.awayTeam.name)),
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
