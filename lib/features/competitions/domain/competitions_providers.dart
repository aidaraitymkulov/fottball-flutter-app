import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/core_providers.dart';
import 'competition.dart';
import 'standing.dart';
import 'scorer.dart';
import '../../matches/domain/match.dart';
import '../../teams/domain/team.dart';

// Список всех чемпионатов
final competitionsProvider = FutureProvider<List<Competition>>((ref) {
  return ref.read(competitionsRepositoryProvider).getCompetitions();
});

// Таблица конкретного чемпионата
final standingsProvider =
    FutureProvider.family<List<StandingRow>, String>((ref, code) {
  return ref.read(competitionsRepositoryProvider).getStandings(code);
});

// Матчи чемпионата
final competitionMatchesProvider =
    FutureProvider.family<List<FootballMatch>, String>((ref, code) {
  return ref.read(competitionsRepositoryProvider).getMatches(code);
});

// Команды чемпионата
final competitionTeamsProvider =
    FutureProvider.family<List<Team>, String>((ref, code) {
  return ref.read(competitionsRepositoryProvider).getTeams(code);
});

// Бомбардиры
final scorersProvider =
    FutureProvider.family<List<Scorer>, String>((ref, code) {
  return ref.read(competitionsRepositoryProvider).getScorers(code);
});
