import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../api/api_client.dart';
import '../../features/competitions/data/competitions_repository.dart';
import '../../features/matches/data/matches_repository.dart';
import '../../features/teams/data/teams_repository.dart';
import '../../features/players/data/players_repository.dart';

// Единственный экземпляр ApiClient на всё приложение
final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

// Репозитории — получают ApiClient через ref
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
