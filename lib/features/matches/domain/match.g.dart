// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchTeamImpl _$$MatchTeamImplFromJson(Map<String, dynamic> json) =>
    _$MatchTeamImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      shortName: json['shortName'] as String?,
      crest: json['crest'] as String?,
    );

Map<String, dynamic> _$$MatchTeamImplToJson(_$MatchTeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'crest': instance.crest,
    };

_$ScoreImpl _$$ScoreImplFromJson(Map<String, dynamic> json) => _$ScoreImpl(
  winner: json['winner'] as String?,
  fullTime: json['fullTime'] == null
      ? null
      : HalfScore.fromJson(json['fullTime'] as Map<String, dynamic>),
  halfTime: json['halfTime'] == null
      ? null
      : HalfScore.fromJson(json['halfTime'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ScoreImplToJson(_$ScoreImpl instance) =>
    <String, dynamic>{
      'winner': instance.winner,
      'fullTime': instance.fullTime,
      'halfTime': instance.halfTime,
    };

_$HalfScoreImpl _$$HalfScoreImplFromJson(Map<String, dynamic> json) =>
    _$HalfScoreImpl(
      home: (json['home'] as num?)?.toInt(),
      away: (json['away'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HalfScoreImplToJson(_$HalfScoreImpl instance) =>
    <String, dynamic>{'home': instance.home, 'away': instance.away};

_$GoalImpl _$$GoalImplFromJson(Map<String, dynamic> json) => _$GoalImpl(
  minute: (json['minute'] as num?)?.toInt(),
  type: json['type'] as String?,
  team: json['team'] == null
      ? null
      : MatchTeam.fromJson(json['team'] as Map<String, dynamic>),
  scorer: json['scorer'] == null
      ? null
      : GoalScorer.fromJson(json['scorer'] as Map<String, dynamic>),
  assist: json['assist'] == null
      ? null
      : GoalScorer.fromJson(json['assist'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$GoalImplToJson(_$GoalImpl instance) =>
    <String, dynamic>{
      'minute': instance.minute,
      'type': instance.type,
      'team': instance.team,
      'scorer': instance.scorer,
      'assist': instance.assist,
    };

_$GoalScorerImpl _$$GoalScorerImplFromJson(Map<String, dynamic> json) =>
    _$GoalScorerImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$GoalScorerImplToJson(_$GoalScorerImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      minute: (json['minute'] as num?)?.toInt(),
      card: json['card'] as String?,
      player: json['player'] == null
          ? null
          : GoalScorer.fromJson(json['player'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : MatchTeam.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'minute': instance.minute,
      'card': instance.card,
      'player': instance.player,
      'team': instance.team,
    };

_$SubstitutionImpl _$$SubstitutionImplFromJson(Map<String, dynamic> json) =>
    _$SubstitutionImpl(
      minute: (json['minute'] as num?)?.toInt(),
      playerOut: json['playerOut'] == null
          ? null
          : GoalScorer.fromJson(json['playerOut'] as Map<String, dynamic>),
      playerIn: json['playerIn'] == null
          ? null
          : GoalScorer.fromJson(json['playerIn'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : MatchTeam.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubstitutionImplToJson(_$SubstitutionImpl instance) =>
    <String, dynamic>{
      'minute': instance.minute,
      'playerOut': instance.playerOut,
      'playerIn': instance.playerIn,
      'team': instance.team,
    };

_$FootballMatchImpl _$$FootballMatchImplFromJson(Map<String, dynamic> json) =>
    _$FootballMatchImpl(
      id: (json['id'] as num).toInt(),
      utcDate: json['utcDate'] as String,
      status: json['status'] as String,
      matchday: (json['matchday'] as num?)?.toInt(),
      stage: json['stage'] as String?,
      homeTeam: MatchTeam.fromJson(json['homeTeam'] as Map<String, dynamic>),
      awayTeam: MatchTeam.fromJson(json['awayTeam'] as Map<String, dynamic>),
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
      goals:
          (json['goals'] as List<dynamic>?)
              ?.map((e) => Goal.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bookings:
          (json['bookings'] as List<dynamic>?)
              ?.map((e) => Booking.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      substitutions:
          (json['substitutions'] as List<dynamic>?)
              ?.map((e) => Substitution.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FootballMatchImplToJson(_$FootballMatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'utcDate': instance.utcDate,
      'status': instance.status,
      'matchday': instance.matchday,
      'stage': instance.stage,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'score': instance.score,
      'goals': instance.goals,
      'bookings': instance.bookings,
      'substitutions': instance.substitutions,
    };
