import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/core_providers.dart';
import 'team.dart';
import '../../matches/domain/match.dart';

// Профиль команды по ID
final teamProvider = FutureProvider.family<Team, int>((ref, id) {
  return ref.read(teamsRepositoryProvider).getTeam(id);
});

// Матчи команды
final teamMatchesProvider =
    FutureProvider.family<List<FootballMatch>, int>((ref, id) {
  return ref.read(teamsRepositoryProvider).getTeamMatches(id);
});
