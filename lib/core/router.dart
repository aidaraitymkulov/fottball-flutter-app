import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/competitions/presentation/competitions_screen.dart';
import '../features/competitions/presentation/competition_screen.dart';
import '../features/teams/presentation/team_screen.dart';
import '../features/players/presentation/player_screen.dart';
import '../features/matches/presentation/match_detail_screen.dart';
import '../shared/widgets/bottom_nav_shell.dart';

final appRouter = GoRouter(
  initialLocation: '/competitions',
  routes: [
    // Shell — общая оболочка с bottom navigation bar
    ShellRoute(
      builder: (context, state, child) => BottomNavShell(child: child),
      routes: [
        GoRoute(
          path: '/competitions',
          builder: (context, state) => const CompetitionsScreen(),
        ),
        GoRoute(
          path: '/favorites',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('Избранное — скоро будет')),
          ),
        ),
      ],
    ),

    // Экраны без bottom nav
    GoRoute(
      path: '/competition/:code',
      builder: (context, state) {
        final code = state.pathParameters['code']!;
        final name = state.uri.queryParameters['name'] ?? code;
        return CompetitionScreen(code: code, name: name);
      },
    ),
    GoRoute(
      path: '/team/:id',
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);
        final name = state.uri.queryParameters['name'] ?? '';
        return TeamScreen(teamId: id, teamName: name);
      },
    ),
    GoRoute(
      path: '/match/:id',
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);
        return MatchDetailScreen(matchId: id);
      },
    ),
    GoRoute(
      path: '/player/:id',
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);
        final name = state.uri.queryParameters['name'] ?? '';
        return PlayerScreen(playerId: id, playerName: name);
      },
    ),
  ],
);
