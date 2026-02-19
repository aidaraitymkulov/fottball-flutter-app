import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/domain/auth_providers.dart';
import '../features/auth/presentation/login_screen.dart';
import '../features/competitions/presentation/competitions_screen.dart';
import '../features/competitions/presentation/competition_screen.dart';
import '../features/teams/presentation/team_screen.dart';
import '../features/players/presentation/player_screen.dart';
import '../features/matches/presentation/match_detail_screen.dart';
import '../shared/widgets/bottom_nav_shell.dart';

GoRouter createRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/competitions',
    redirect: (context, state) {
      final authStatus = ref.read(authProvider);
      final isLogin = state.matchedLocation == '/login';

      if (authStatus == AuthStatus.loading) return null;
      if (authStatus == AuthStatus.unauthenticated && !isLogin) return '/login';
      if (authStatus == AuthStatus.authenticated && isLogin) return '/competitions';
      return null;
    },
    refreshListenable: _AuthStatusListenable(ref),
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
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
}

class _AuthStatusListenable extends ChangeNotifier {
  _AuthStatusListenable(Ref ref) {
    ref.listen(authProvider, (prev, next) => notifyListeners());
  }
}
