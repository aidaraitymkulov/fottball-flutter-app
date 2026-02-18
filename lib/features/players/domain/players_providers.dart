import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/core_providers.dart';
import 'players.dart';
import '../../matches/domain/match.dart';

final playerProfileProvider =
    FutureProvider.family<PlayerProfile, int>((ref, id) {
  return ref.read(playersRepositoryProvider).getPlayerProfile(id);
});

final playerMatchesProvider =
    FutureProvider.family<List<FootballMatch>, int>((ref, id) {
  return ref.read(playersRepositoryProvider).getPlayerMatches(id);
});
