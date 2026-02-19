import 'package:flutter/material.dart';
import 'package:flutter_app/core/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../api/api_client.dart';
import '../../features/auth/data/token_storage.dart';
import '../../features/auth/data/auth_repository.dart';
import '../../features/competitions/data/competitions_repository.dart';
import '../../features/matches/data/matches_repository.dart';
import '../../features/teams/data/teams_repository.dart';
import '../../features/players/data/players_repository.dart';

final tokenStorageProvider = Provider<TokenStorage>((ref) => TokenStorage());

final routerProvider = Provider((ref)  => createRouter(ref));


final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(ref.watch(tokenStorageProvider)),
);

final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient(
    ref.watch(tokenStorageProvider),
    ref.watch(authRepositoryProvider),
  ),
);

final competitionsRepositoryProvider = Provider<CompetitionsRepository>(
  (ref) => CompetitionsRepository(ref.watch(apiClientProvider)),
);

final matchesRepositoryProvider = Provider<MatchesRepository>(
  (ref) => MatchesRepository(ref.watch(apiClientProvider)),
);

final teamsRepositoryProvider = Provider<TeamsRepository>(
  (ref) => TeamsRepository(ref.watch(apiClientProvider)),
);

final playersRepositoryProvider = Provider<PlayersRepository>(
  (ref) => PlayersRepository(ref.watch(apiClientProvider)),
);

