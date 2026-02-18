import 'package:freezed_annotation/freezed_annotation.dart';

part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class MatchTeam with _$MatchTeam {
  const factory MatchTeam({
    required int id,
    required String name,
    String? shortName,
    String? crest,
  }) = _MatchTeam;

  factory MatchTeam.fromJson(Map<String, dynamic> json) =>
      _$MatchTeamFromJson(json);
}

@freezed
class Score with _$Score {
  const factory Score({
    String? winner, // HOME_TEAM, AWAY_TEAM, DRAW
    HalfScore? fullTime,
    HalfScore? halfTime,
  }) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}

@freezed
class HalfScore with _$HalfScore {
  const factory HalfScore({
    int? home,
    int? away,
  }) = _HalfScore;

  factory HalfScore.fromJson(Map<String, dynamic> json) =>
      _$HalfScoreFromJson(json);
}

@freezed
class Goal with _$Goal {
  const factory Goal({
    int? minute,
    String? type,
    MatchTeam? team,
    GoalScorer? scorer,
    GoalScorer? assist,
  }) = _Goal;

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
}

@freezed
class GoalScorer with _$GoalScorer {
  const factory GoalScorer({
    int? id,
    String? name,
  }) = _GoalScorer;

  factory GoalScorer.fromJson(Map<String, dynamic> json) =>
      _$GoalScorerFromJson(json);
}

@freezed
class Booking with _$Booking {
  const factory Booking({
    int? minute,
    String? card, // YELLOW, RED, YELLOW_RED
    GoalScorer? player,
    MatchTeam? team,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}

@freezed
class Substitution with _$Substitution {
  const factory Substitution({
    int? minute,
    GoalScorer? playerOut,
    GoalScorer? playerIn,
    MatchTeam? team,
  }) = _Substitution;

  factory Substitution.fromJson(Map<String, dynamic> json) =>
      _$SubstitutionFromJson(json);
}

@freezed
class FootballMatch with _$FootballMatch {
  const factory FootballMatch({
    required int id,
    required String utcDate,
    required String status,
    int? matchday,
    String? stage,
    required MatchTeam homeTeam,
    required MatchTeam awayTeam,
    required Score score,
    @Default([]) List<Goal> goals,
    @Default([]) List<Booking> bookings,
    @Default([]) List<Substitution> substitutions,
  }) = _FootballMatch;

  factory FootballMatch.fromJson(Map<String, dynamic> json) =>
      _$FootballMatchFromJson(json);
}
