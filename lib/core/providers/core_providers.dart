import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/api/api_client.dart';
import '../../features/competitions/data/competitions_repository.dart';
import '../../features/teams/data/teams_repository.dart';
import '../../features/players/data/players_repository.dart';

// Единственный экземпляр ApiClient на всё приложение
final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

// Репозитории — получают ApiClient через ref
final competitionsRepositoryProvider = Provider<CompetitionsRepository>(
  (ref) => CompetitionsRepository(ref.read(apiClientProvider)),
);

final teamsRepositoryProvider = Provider<TeamsRepository>(
  (ref) => TeamsRepository(ref.read(apiClientProvider)),
);

final playersRepositoryProvider = Provider<PlayersRepository>(
  (ref) => PlayersRepository(ref.read(apiClientProvider)),
);
