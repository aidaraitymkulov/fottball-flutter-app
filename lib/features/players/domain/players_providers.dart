import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/core_providers.dart';
import '../../matches/domain/match.dart';

// Матчи игрока
final playerMatchesProvider =
    FutureProvider.family<List<FootballMatch>, int>((ref, id) {
  return ref.read(playersRepositoryProvider).getPlayerMatches(id);
});
