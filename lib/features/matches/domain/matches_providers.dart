import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/core_providers.dart';
import 'match.dart';

final matchProvider = FutureProvider.family<FootballMatch, int>((ref, id) {
  return ref.read(matchesRepositoryProvider).getMatch(id);
});
