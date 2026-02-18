// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MatchTeam _$MatchTeamFromJson(Map<String, dynamic> json) {
  return _MatchTeam.fromJson(json);
}

/// @nodoc
mixin _$MatchTeam {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get shortName => throw _privateConstructorUsedError;
  String? get crest => throw _privateConstructorUsedError;

  /// Serializes this MatchTeam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchTeam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchTeamCopyWith<MatchTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchTeamCopyWith<$Res> {
  factory $MatchTeamCopyWith(MatchTeam value, $Res Function(MatchTeam) then) =
      _$MatchTeamCopyWithImpl<$Res, MatchTeam>;
  @useResult
  $Res call({int id, String name, String? shortName, String? crest});
}

/// @nodoc
class _$MatchTeamCopyWithImpl<$Res, $Val extends MatchTeam>
    implements $MatchTeamCopyWith<$Res> {
  _$MatchTeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchTeam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = freezed,
    Object? crest = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            shortName: freezed == shortName
                ? _value.shortName
                : shortName // ignore: cast_nullable_to_non_nullable
                      as String?,
            crest: freezed == crest
                ? _value.crest
                : crest // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MatchTeamImplCopyWith<$Res>
    implements $MatchTeamCopyWith<$Res> {
  factory _$$MatchTeamImplCopyWith(
    _$MatchTeamImpl value,
    $Res Function(_$MatchTeamImpl) then,
  ) = __$$MatchTeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? shortName, String? crest});
}

/// @nodoc
class __$$MatchTeamImplCopyWithImpl<$Res>
    extends _$MatchTeamCopyWithImpl<$Res, _$MatchTeamImpl>
    implements _$$MatchTeamImplCopyWith<$Res> {
  __$$MatchTeamImplCopyWithImpl(
    _$MatchTeamImpl _value,
    $Res Function(_$MatchTeamImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MatchTeam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = freezed,
    Object? crest = freezed,
  }) {
    return _then(
      _$MatchTeamImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        shortName: freezed == shortName
            ? _value.shortName
            : shortName // ignore: cast_nullable_to_non_nullable
                  as String?,
        crest: freezed == crest
            ? _value.crest
            : crest // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchTeamImpl implements _MatchTeam {
  const _$MatchTeamImpl({
    required this.id,
    required this.name,
    this.shortName,
    this.crest,
  });

  factory _$MatchTeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchTeamImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? shortName;
  @override
  final String? crest;

  @override
  String toString() {
    return 'MatchTeam(id: $id, name: $name, shortName: $shortName, crest: $crest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchTeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.crest, crest) || other.crest == crest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, shortName, crest);

  /// Create a copy of MatchTeam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchTeamImplCopyWith<_$MatchTeamImpl> get copyWith =>
      __$$MatchTeamImplCopyWithImpl<_$MatchTeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchTeamImplToJson(this);
  }
}

abstract class _MatchTeam implements MatchTeam {
  const factory _MatchTeam({
    required final int id,
    required final String name,
    final String? shortName,
    final String? crest,
  }) = _$MatchTeamImpl;

  factory _MatchTeam.fromJson(Map<String, dynamic> json) =
      _$MatchTeamImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get shortName;
  @override
  String? get crest;

  /// Create a copy of MatchTeam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchTeamImplCopyWith<_$MatchTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return _Score.fromJson(json);
}

/// @nodoc
mixin _$Score {
  String? get winner =>
      throw _privateConstructorUsedError; // HOME_TEAM, AWAY_TEAM, DRAW
  HalfScore? get fullTime => throw _privateConstructorUsedError;
  HalfScore? get halfTime => throw _privateConstructorUsedError;

  /// Serializes this Score to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreCopyWith<Score> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreCopyWith<$Res> {
  factory $ScoreCopyWith(Score value, $Res Function(Score) then) =
      _$ScoreCopyWithImpl<$Res, Score>;
  @useResult
  $Res call({String? winner, HalfScore? fullTime, HalfScore? halfTime});

  $HalfScoreCopyWith<$Res>? get fullTime;
  $HalfScoreCopyWith<$Res>? get halfTime;
}

/// @nodoc
class _$ScoreCopyWithImpl<$Res, $Val extends Score>
    implements $ScoreCopyWith<$Res> {
  _$ScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winner = freezed,
    Object? fullTime = freezed,
    Object? halfTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            winner: freezed == winner
                ? _value.winner
                : winner // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullTime: freezed == fullTime
                ? _value.fullTime
                : fullTime // ignore: cast_nullable_to_non_nullable
                      as HalfScore?,
            halfTime: freezed == halfTime
                ? _value.halfTime
                : halfTime // ignore: cast_nullable_to_non_nullable
                      as HalfScore?,
          )
          as $Val,
    );
  }

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HalfScoreCopyWith<$Res>? get fullTime {
    if (_value.fullTime == null) {
      return null;
    }

    return $HalfScoreCopyWith<$Res>(_value.fullTime!, (value) {
      return _then(_value.copyWith(fullTime: value) as $Val);
    });
  }

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HalfScoreCopyWith<$Res>? get halfTime {
    if (_value.halfTime == null) {
      return null;
    }

    return $HalfScoreCopyWith<$Res>(_value.halfTime!, (value) {
      return _then(_value.copyWith(halfTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScoreImplCopyWith<$Res> implements $ScoreCopyWith<$Res> {
  factory _$$ScoreImplCopyWith(
    _$ScoreImpl value,
    $Res Function(_$ScoreImpl) then,
  ) = __$$ScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? winner, HalfScore? fullTime, HalfScore? halfTime});

  @override
  $HalfScoreCopyWith<$Res>? get fullTime;
  @override
  $HalfScoreCopyWith<$Res>? get halfTime;
}

/// @nodoc
class __$$ScoreImplCopyWithImpl<$Res>
    extends _$ScoreCopyWithImpl<$Res, _$ScoreImpl>
    implements _$$ScoreImplCopyWith<$Res> {
  __$$ScoreImplCopyWithImpl(
    _$ScoreImpl _value,
    $Res Function(_$ScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winner = freezed,
    Object? fullTime = freezed,
    Object? halfTime = freezed,
  }) {
    return _then(
      _$ScoreImpl(
        winner: freezed == winner
            ? _value.winner
            : winner // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullTime: freezed == fullTime
            ? _value.fullTime
            : fullTime // ignore: cast_nullable_to_non_nullable
                  as HalfScore?,
        halfTime: freezed == halfTime
            ? _value.halfTime
            : halfTime // ignore: cast_nullable_to_non_nullable
                  as HalfScore?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreImpl implements _Score {
  const _$ScoreImpl({this.winner, this.fullTime, this.halfTime});

  factory _$ScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreImplFromJson(json);

  @override
  final String? winner;
  // HOME_TEAM, AWAY_TEAM, DRAW
  @override
  final HalfScore? fullTime;
  @override
  final HalfScore? halfTime;

  @override
  String toString() {
    return 'Score(winner: $winner, fullTime: $fullTime, halfTime: $halfTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreImpl &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.fullTime, fullTime) ||
                other.fullTime == fullTime) &&
            (identical(other.halfTime, halfTime) ||
                other.halfTime == halfTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, winner, fullTime, halfTime);

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreImplCopyWith<_$ScoreImpl> get copyWith =>
      __$$ScoreImplCopyWithImpl<_$ScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreImplToJson(this);
  }
}

abstract class _Score implements Score {
  const factory _Score({
    final String? winner,
    final HalfScore? fullTime,
    final HalfScore? halfTime,
  }) = _$ScoreImpl;

  factory _Score.fromJson(Map<String, dynamic> json) = _$ScoreImpl.fromJson;

  @override
  String? get winner; // HOME_TEAM, AWAY_TEAM, DRAW
  @override
  HalfScore? get fullTime;
  @override
  HalfScore? get halfTime;

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreImplCopyWith<_$ScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HalfScore _$HalfScoreFromJson(Map<String, dynamic> json) {
  return _HalfScore.fromJson(json);
}

/// @nodoc
mixin _$HalfScore {
  int? get home => throw _privateConstructorUsedError;
  int? get away => throw _privateConstructorUsedError;

  /// Serializes this HalfScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HalfScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HalfScoreCopyWith<HalfScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HalfScoreCopyWith<$Res> {
  factory $HalfScoreCopyWith(HalfScore value, $Res Function(HalfScore) then) =
      _$HalfScoreCopyWithImpl<$Res, HalfScore>;
  @useResult
  $Res call({int? home, int? away});
}

/// @nodoc
class _$HalfScoreCopyWithImpl<$Res, $Val extends HalfScore>
    implements $HalfScoreCopyWith<$Res> {
  _$HalfScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HalfScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? home = freezed, Object? away = freezed}) {
    return _then(
      _value.copyWith(
            home: freezed == home
                ? _value.home
                : home // ignore: cast_nullable_to_non_nullable
                      as int?,
            away: freezed == away
                ? _value.away
                : away // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HalfScoreImplCopyWith<$Res>
    implements $HalfScoreCopyWith<$Res> {
  factory _$$HalfScoreImplCopyWith(
    _$HalfScoreImpl value,
    $Res Function(_$HalfScoreImpl) then,
  ) = __$$HalfScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? home, int? away});
}

/// @nodoc
class __$$HalfScoreImplCopyWithImpl<$Res>
    extends _$HalfScoreCopyWithImpl<$Res, _$HalfScoreImpl>
    implements _$$HalfScoreImplCopyWith<$Res> {
  __$$HalfScoreImplCopyWithImpl(
    _$HalfScoreImpl _value,
    $Res Function(_$HalfScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HalfScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? home = freezed, Object? away = freezed}) {
    return _then(
      _$HalfScoreImpl(
        home: freezed == home
            ? _value.home
            : home // ignore: cast_nullable_to_non_nullable
                  as int?,
        away: freezed == away
            ? _value.away
            : away // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HalfScoreImpl implements _HalfScore {
  const _$HalfScoreImpl({this.home, this.away});

  factory _$HalfScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$HalfScoreImplFromJson(json);

  @override
  final int? home;
  @override
  final int? away;

  @override
  String toString() {
    return 'HalfScore(home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HalfScoreImpl &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, home, away);

  /// Create a copy of HalfScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HalfScoreImplCopyWith<_$HalfScoreImpl> get copyWith =>
      __$$HalfScoreImplCopyWithImpl<_$HalfScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HalfScoreImplToJson(this);
  }
}

abstract class _HalfScore implements HalfScore {
  const factory _HalfScore({final int? home, final int? away}) =
      _$HalfScoreImpl;

  factory _HalfScore.fromJson(Map<String, dynamic> json) =
      _$HalfScoreImpl.fromJson;

  @override
  int? get home;
  @override
  int? get away;

  /// Create a copy of HalfScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HalfScoreImplCopyWith<_$HalfScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return _Goal.fromJson(json);
}

/// @nodoc
mixin _$Goal {
  int? get minute => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  MatchTeam? get team => throw _privateConstructorUsedError;
  GoalScorer? get scorer => throw _privateConstructorUsedError;
  GoalScorer? get assist => throw _privateConstructorUsedError;

  /// Serializes this Goal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalCopyWith<Goal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) then) =
      _$GoalCopyWithImpl<$Res, Goal>;
  @useResult
  $Res call({
    int? minute,
    String? type,
    MatchTeam? team,
    GoalScorer? scorer,
    GoalScorer? assist,
  });

  $MatchTeamCopyWith<$Res>? get team;
  $GoalScorerCopyWith<$Res>? get scorer;
  $GoalScorerCopyWith<$Res>? get assist;
}

/// @nodoc
class _$GoalCopyWithImpl<$Res, $Val extends Goal>
    implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minute = freezed,
    Object? type = freezed,
    Object? team = freezed,
    Object? scorer = freezed,
    Object? assist = freezed,
  }) {
    return _then(
      _value.copyWith(
            minute: freezed == minute
                ? _value.minute
                : minute // ignore: cast_nullable_to_non_nullable
                      as int?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            team: freezed == team
                ? _value.team
                : team // ignore: cast_nullable_to_non_nullable
                      as MatchTeam?,
            scorer: freezed == scorer
                ? _value.scorer
                : scorer // ignore: cast_nullable_to_non_nullable
                      as GoalScorer?,
            assist: freezed == assist
                ? _value.assist
                : assist // ignore: cast_nullable_to_non_nullable
                      as GoalScorer?,
          )
          as $Val,
    );
  }

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchTeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $MatchTeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoalScorerCopyWith<$Res>? get scorer {
    if (_value.scorer == null) {
      return null;
    }

    return $GoalScorerCopyWith<$Res>(_value.scorer!, (value) {
      return _then(_value.copyWith(scorer: value) as $Val);
    });
  }

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoalScorerCopyWith<$Res>? get assist {
    if (_value.assist == null) {
      return null;
    }

    return $GoalScorerCopyWith<$Res>(_value.assist!, (value) {
      return _then(_value.copyWith(assist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoalImplCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$$GoalImplCopyWith(
    _$GoalImpl value,
    $Res Function(_$GoalImpl) then,
  ) = __$$GoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? minute,
    String? type,
    MatchTeam? team,
    GoalScorer? scorer,
    GoalScorer? assist,
  });

  @override
  $MatchTeamCopyWith<$Res>? get team;
  @override
  $GoalScorerCopyWith<$Res>? get scorer;
  @override
  $GoalScorerCopyWith<$Res>? get assist;
}

/// @nodoc
class __$$GoalImplCopyWithImpl<$Res>
    extends _$GoalCopyWithImpl<$Res, _$GoalImpl>
    implements _$$GoalImplCopyWith<$Res> {
  __$$GoalImplCopyWithImpl(_$GoalImpl _value, $Res Function(_$GoalImpl) _then)
    : super(_value, _then);

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minute = freezed,
    Object? type = freezed,
    Object? team = freezed,
    Object? scorer = freezed,
    Object? assist = freezed,
  }) {
    return _then(
      _$GoalImpl(
        minute: freezed == minute
            ? _value.minute
            : minute // ignore: cast_nullable_to_non_nullable
                  as int?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        team: freezed == team
            ? _value.team
            : team // ignore: cast_nullable_to_non_nullable
                  as MatchTeam?,
        scorer: freezed == scorer
            ? _value.scorer
            : scorer // ignore: cast_nullable_to_non_nullable
                  as GoalScorer?,
        assist: freezed == assist
            ? _value.assist
            : assist // ignore: cast_nullable_to_non_nullable
                  as GoalScorer?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalImpl implements _Goal {
  const _$GoalImpl({
    this.minute,
    this.type,
    this.team,
    this.scorer,
    this.assist,
  });

  factory _$GoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalImplFromJson(json);

  @override
  final int? minute;
  @override
  final String? type;
  @override
  final MatchTeam? team;
  @override
  final GoalScorer? scorer;
  @override
  final GoalScorer? assist;

  @override
  String toString() {
    return 'Goal(minute: $minute, type: $type, team: $team, scorer: $scorer, assist: $assist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalImpl &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.scorer, scorer) || other.scorer == scorer) &&
            (identical(other.assist, assist) || other.assist == assist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minute, type, team, scorer, assist);

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalImplCopyWith<_$GoalImpl> get copyWith =>
      __$$GoalImplCopyWithImpl<_$GoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalImplToJson(this);
  }
}

abstract class _Goal implements Goal {
  const factory _Goal({
    final int? minute,
    final String? type,
    final MatchTeam? team,
    final GoalScorer? scorer,
    final GoalScorer? assist,
  }) = _$GoalImpl;

  factory _Goal.fromJson(Map<String, dynamic> json) = _$GoalImpl.fromJson;

  @override
  int? get minute;
  @override
  String? get type;
  @override
  MatchTeam? get team;
  @override
  GoalScorer? get scorer;
  @override
  GoalScorer? get assist;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalImplCopyWith<_$GoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalScorer _$GoalScorerFromJson(Map<String, dynamic> json) {
  return _GoalScorer.fromJson(json);
}

/// @nodoc
mixin _$GoalScorer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this GoalScorer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalScorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalScorerCopyWith<GoalScorer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalScorerCopyWith<$Res> {
  factory $GoalScorerCopyWith(
    GoalScorer value,
    $Res Function(GoalScorer) then,
  ) = _$GoalScorerCopyWithImpl<$Res, GoalScorer>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GoalScorerCopyWithImpl<$Res, $Val extends GoalScorer>
    implements $GoalScorerCopyWith<$Res> {
  _$GoalScorerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalScorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GoalScorerImplCopyWith<$Res>
    implements $GoalScorerCopyWith<$Res> {
  factory _$$GoalScorerImplCopyWith(
    _$GoalScorerImpl value,
    $Res Function(_$GoalScorerImpl) then,
  ) = __$$GoalScorerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$GoalScorerImplCopyWithImpl<$Res>
    extends _$GoalScorerCopyWithImpl<$Res, _$GoalScorerImpl>
    implements _$$GoalScorerImplCopyWith<$Res> {
  __$$GoalScorerImplCopyWithImpl(
    _$GoalScorerImpl _value,
    $Res Function(_$GoalScorerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoalScorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _$GoalScorerImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalScorerImpl implements _GoalScorer {
  const _$GoalScorerImpl({this.id, this.name});

  factory _$GoalScorerImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalScorerImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GoalScorer(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalScorerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GoalScorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalScorerImplCopyWith<_$GoalScorerImpl> get copyWith =>
      __$$GoalScorerImplCopyWithImpl<_$GoalScorerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalScorerImplToJson(this);
  }
}

abstract class _GoalScorer implements GoalScorer {
  const factory _GoalScorer({final int? id, final String? name}) =
      _$GoalScorerImpl;

  factory _GoalScorer.fromJson(Map<String, dynamic> json) =
      _$GoalScorerImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of GoalScorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalScorerImplCopyWith<_$GoalScorerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  int? get minute => throw _privateConstructorUsedError;
  String? get card =>
      throw _privateConstructorUsedError; // YELLOW, RED, YELLOW_RED
  GoalScorer? get player => throw _privateConstructorUsedError;
  MatchTeam? get team => throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call({int? minute, String? card, GoalScorer? player, MatchTeam? team});

  $GoalScorerCopyWith<$Res>? get player;
  $MatchTeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minute = freezed,
    Object? card = freezed,
    Object? player = freezed,
    Object? team = freezed,
  }) {
    return _then(
      _value.copyWith(
            minute: freezed == minute
                ? _value.minute
                : minute // ignore: cast_nullable_to_non_nullable
                      as int?,
            card: freezed == card
                ? _value.card
                : card // ignore: cast_nullable_to_non_nullable
                      as String?,
            player: freezed == player
                ? _value.player
                : player // ignore: cast_nullable_to_non_nullable
                      as GoalScorer?,
            team: freezed == team
                ? _value.team
                : team // ignore: cast_nullable_to_non_nullable
                      as MatchTeam?,
          )
          as $Val,
    );
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoalScorerCopyWith<$Res>? get player {
    if (_value.player == null) {
      return null;
    }

    return $GoalScorerCopyWith<$Res>(_value.player!, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchTeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $MatchTeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
    _$BookingImpl value,
    $Res Function(_$BookingImpl) then,
  ) = __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? minute, String? card, GoalScorer? player, MatchTeam? team});

  @override
  $GoalScorerCopyWith<$Res>? get player;
  @override
  $MatchTeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
    _$BookingImpl _value,
    $Res Function(_$BookingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minute = freezed,
    Object? card = freezed,
    Object? player = freezed,
    Object? team = freezed,
  }) {
    return _then(
      _$BookingImpl(
        minute: freezed == minute
            ? _value.minute
            : minute // ignore: cast_nullable_to_non_nullable
                  as int?,
        card: freezed == card
            ? _value.card
            : card // ignore: cast_nullable_to_non_nullable
                  as String?,
        player: freezed == player
            ? _value.player
            : player // ignore: cast_nullable_to_non_nullable
                  as GoalScorer?,
        team: freezed == team
            ? _value.team
            : team // ignore: cast_nullable_to_non_nullable
                  as MatchTeam?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl({this.minute, this.card, this.player, this.team});

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  final int? minute;
  @override
  final String? card;
  // YELLOW, RED, YELLOW_RED
  @override
  final GoalScorer? player;
  @override
  final MatchTeam? team;

  @override
  String toString() {
    return 'Booking(minute: $minute, card: $card, player: $player, team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minute, card, player, team);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(this);
  }
}

abstract class _Booking implements Booking {
  const factory _Booking({
    final int? minute,
    final String? card,
    final GoalScorer? player,
    final MatchTeam? team,
  }) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  int? get minute;
  @override
  String? get card; // YELLOW, RED, YELLOW_RED
  @override
  GoalScorer? get player;
  @override
  MatchTeam? get team;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Substitution _$SubstitutionFromJson(Map<String, dynamic> json) {
  return _Substitution.fromJson(json);
}

/// @nodoc
mixin _$Substitution {
  int? get minute => throw _privateConstructorUsedError;
  GoalScorer? get playerOut => throw _privateConstructorUsedError;
  GoalScorer? get playerIn => throw _privateConstructorUsedError;
  MatchTeam? get team => throw _privateConstructorUsedError;

  /// Serializes this Substitution to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubstitutionCopyWith<Substitution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstitutionCopyWith<$Res> {
  factory $SubstitutionCopyWith(
    Substitution value,
    $Res Function(Substitution) then,
  ) = _$SubstitutionCopyWithImpl<$Res, Substitution>;
  @useResult
  $Res call({
    int? minute,
    GoalScorer? playerOut,
    GoalScorer? playerIn,
    MatchTeam? team,
  });

  $GoalScorerCopyWith<$Res>? get playerOut;
  $GoalScorerCopyWith<$Res>? get playerIn;
  $MatchTeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$SubstitutionCopyWithImpl<$Res, $Val extends Substitution>
    implements $SubstitutionCopyWith<$Res> {
  _$SubstitutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minute = freezed,
    Object? playerOut = freezed,
    Object? playerIn = freezed,
    Object? team = freezed,
  }) {
    return _then(
      _value.copyWith(
            minute: freezed == minute
                ? _value.minute
                : minute // ignore: cast_nullable_to_non_nullable
                      as int?,
            playerOut: freezed == playerOut
                ? _value.playerOut
                : playerOut // ignore: cast_nullable_to_non_nullable
                      as GoalScorer?,
            playerIn: freezed == playerIn
                ? _value.playerIn
                : playerIn // ignore: cast_nullable_to_non_nullable
                      as GoalScorer?,
            team: freezed == team
                ? _value.team
                : team // ignore: cast_nullable_to_non_nullable
                      as MatchTeam?,
          )
          as $Val,
    );
  }

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoalScorerCopyWith<$Res>? get playerOut {
    if (_value.playerOut == null) {
      return null;
    }

    return $GoalScorerCopyWith<$Res>(_value.playerOut!, (value) {
      return _then(_value.copyWith(playerOut: value) as $Val);
    });
  }

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoalScorerCopyWith<$Res>? get playerIn {
    if (_value.playerIn == null) {
      return null;
    }

    return $GoalScorerCopyWith<$Res>(_value.playerIn!, (value) {
      return _then(_value.copyWith(playerIn: value) as $Val);
    });
  }

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchTeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $MatchTeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstitutionImplCopyWith<$Res>
    implements $SubstitutionCopyWith<$Res> {
  factory _$$SubstitutionImplCopyWith(
    _$SubstitutionImpl value,
    $Res Function(_$SubstitutionImpl) then,
  ) = __$$SubstitutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? minute,
    GoalScorer? playerOut,
    GoalScorer? playerIn,
    MatchTeam? team,
  });

  @override
  $GoalScorerCopyWith<$Res>? get playerOut;
  @override
  $GoalScorerCopyWith<$Res>? get playerIn;
  @override
  $MatchTeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$SubstitutionImplCopyWithImpl<$Res>
    extends _$SubstitutionCopyWithImpl<$Res, _$SubstitutionImpl>
    implements _$$SubstitutionImplCopyWith<$Res> {
  __$$SubstitutionImplCopyWithImpl(
    _$SubstitutionImpl _value,
    $Res Function(_$SubstitutionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minute = freezed,
    Object? playerOut = freezed,
    Object? playerIn = freezed,
    Object? team = freezed,
  }) {
    return _then(
      _$SubstitutionImpl(
        minute: freezed == minute
            ? _value.minute
            : minute // ignore: cast_nullable_to_non_nullable
                  as int?,
        playerOut: freezed == playerOut
            ? _value.playerOut
            : playerOut // ignore: cast_nullable_to_non_nullable
                  as GoalScorer?,
        playerIn: freezed == playerIn
            ? _value.playerIn
            : playerIn // ignore: cast_nullable_to_non_nullable
                  as GoalScorer?,
        team: freezed == team
            ? _value.team
            : team // ignore: cast_nullable_to_non_nullable
                  as MatchTeam?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstitutionImpl implements _Substitution {
  const _$SubstitutionImpl({
    this.minute,
    this.playerOut,
    this.playerIn,
    this.team,
  });

  factory _$SubstitutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstitutionImplFromJson(json);

  @override
  final int? minute;
  @override
  final GoalScorer? playerOut;
  @override
  final GoalScorer? playerIn;
  @override
  final MatchTeam? team;

  @override
  String toString() {
    return 'Substitution(minute: $minute, playerOut: $playerOut, playerIn: $playerIn, team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstitutionImpl &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.playerOut, playerOut) ||
                other.playerOut == playerOut) &&
            (identical(other.playerIn, playerIn) ||
                other.playerIn == playerIn) &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minute, playerOut, playerIn, team);

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstitutionImplCopyWith<_$SubstitutionImpl> get copyWith =>
      __$$SubstitutionImplCopyWithImpl<_$SubstitutionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstitutionImplToJson(this);
  }
}

abstract class _Substitution implements Substitution {
  const factory _Substitution({
    final int? minute,
    final GoalScorer? playerOut,
    final GoalScorer? playerIn,
    final MatchTeam? team,
  }) = _$SubstitutionImpl;

  factory _Substitution.fromJson(Map<String, dynamic> json) =
      _$SubstitutionImpl.fromJson;

  @override
  int? get minute;
  @override
  GoalScorer? get playerOut;
  @override
  GoalScorer? get playerIn;
  @override
  MatchTeam? get team;

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubstitutionImplCopyWith<_$SubstitutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FootballMatch _$FootballMatchFromJson(Map<String, dynamic> json) {
  return _FootballMatch.fromJson(json);
}

/// @nodoc
mixin _$FootballMatch {
  int get id => throw _privateConstructorUsedError;
  String get utcDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int? get matchday => throw _privateConstructorUsedError;
  String? get stage => throw _privateConstructorUsedError;
  MatchTeam get homeTeam => throw _privateConstructorUsedError;
  MatchTeam get awayTeam => throw _privateConstructorUsedError;
  Score get score => throw _privateConstructorUsedError;
  List<Goal> get goals => throw _privateConstructorUsedError;
  List<Booking> get bookings => throw _privateConstructorUsedError;
  List<Substitution> get substitutions => throw _privateConstructorUsedError;

  /// Serializes this FootballMatch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FootballMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FootballMatchCopyWith<FootballMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FootballMatchCopyWith<$Res> {
  factory $FootballMatchCopyWith(
    FootballMatch value,
    $Res Function(FootballMatch) then,
  ) = _$FootballMatchCopyWithImpl<$Res, FootballMatch>;
  @useResult
  $Res call({
    int id,
    String utcDate,
    String status,
    int? matchday,
    String? stage,
    MatchTeam homeTeam,
    MatchTeam awayTeam,
    Score score,
    List<Goal> goals,
    List<Booking> bookings,
    List<Substitution> substitutions,
  });

  $MatchTeamCopyWith<$Res> get homeTeam;
  $MatchTeamCopyWith<$Res> get awayTeam;
  $ScoreCopyWith<$Res> get score;
}

/// @nodoc
class _$FootballMatchCopyWithImpl<$Res, $Val extends FootballMatch>
    implements $FootballMatchCopyWith<$Res> {
  _$FootballMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FootballMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? utcDate = null,
    Object? status = null,
    Object? matchday = freezed,
    Object? stage = freezed,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? score = null,
    Object? goals = null,
    Object? bookings = null,
    Object? substitutions = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            utcDate: null == utcDate
                ? _value.utcDate
                : utcDate // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            matchday: freezed == matchday
                ? _value.matchday
                : matchday // ignore: cast_nullable_to_non_nullable
                      as int?,
            stage: freezed == stage
                ? _value.stage
                : stage // ignore: cast_nullable_to_non_nullable
                      as String?,
            homeTeam: null == homeTeam
                ? _value.homeTeam
                : homeTeam // ignore: cast_nullable_to_non_nullable
                      as MatchTeam,
            awayTeam: null == awayTeam
                ? _value.awayTeam
                : awayTeam // ignore: cast_nullable_to_non_nullable
                      as MatchTeam,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as Score,
            goals: null == goals
                ? _value.goals
                : goals // ignore: cast_nullable_to_non_nullable
                      as List<Goal>,
            bookings: null == bookings
                ? _value.bookings
                : bookings // ignore: cast_nullable_to_non_nullable
                      as List<Booking>,
            substitutions: null == substitutions
                ? _value.substitutions
                : substitutions // ignore: cast_nullable_to_non_nullable
                      as List<Substitution>,
          )
          as $Val,
    );
  }

  /// Create a copy of FootballMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchTeamCopyWith<$Res> get homeTeam {
    return $MatchTeamCopyWith<$Res>(_value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value) as $Val);
    });
  }

  /// Create a copy of FootballMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchTeamCopyWith<$Res> get awayTeam {
    return $MatchTeamCopyWith<$Res>(_value.awayTeam, (value) {
      return _then(_value.copyWith(awayTeam: value) as $Val);
    });
  }

  /// Create a copy of FootballMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoreCopyWith<$Res> get score {
    return $ScoreCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FootballMatchImplCopyWith<$Res>
    implements $FootballMatchCopyWith<$Res> {
  factory _$$FootballMatchImplCopyWith(
    _$FootballMatchImpl value,
    $Res Function(_$FootballMatchImpl) then,
  ) = __$$FootballMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String utcDate,
    String status,
    int? matchday,
    String? stage,
    MatchTeam homeTeam,
    MatchTeam awayTeam,
    Score score,
    List<Goal> goals,
    List<Booking> bookings,
    List<Substitution> substitutions,
  });

  @override
  $MatchTeamCopyWith<$Res> get homeTeam;
  @override
  $MatchTeamCopyWith<$Res> get awayTeam;
  @override
  $ScoreCopyWith<$Res> get score;
}

/// @nodoc
class __$$FootballMatchImplCopyWithImpl<$Res>
    extends _$FootballMatchCopyWithImpl<$Res, _$FootballMatchImpl>
    implements _$$FootballMatchImplCopyWith<$Res> {
  __$$FootballMatchImplCopyWithImpl(
    _$FootballMatchImpl _value,
    $Res Function(_$FootballMatchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FootballMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? utcDate = null,
    Object? status = null,
    Object? matchday = freezed,
    Object? stage = freezed,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? score = null,
    Object? goals = null,
    Object? bookings = null,
    Object? substitutions = null,
  }) {
    return _then(
      _$FootballMatchImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        utcDate: null == utcDate
            ? _value.utcDate
            : utcDate // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        matchday: freezed == matchday
            ? _value.matchday
            : matchday // ignore: cast_nullable_to_non_nullable
                  as int?,
        stage: freezed == stage
            ? _value.stage
            : stage // ignore: cast_nullable_to_non_nullable
                  as String?,
        homeTeam: null == homeTeam
            ? _value.homeTeam
            : homeTeam // ignore: cast_nullable_to_non_nullable
                  as MatchTeam,
        awayTeam: null == awayTeam
            ? _value.awayTeam
            : awayTeam // ignore: cast_nullable_to_non_nullable
                  as MatchTeam,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as Score,
        goals: null == goals
            ? _value._goals
            : goals // ignore: cast_nullable_to_non_nullable
                  as List<Goal>,
        bookings: null == bookings
            ? _value._bookings
            : bookings // ignore: cast_nullable_to_non_nullable
                  as List<Booking>,
        substitutions: null == substitutions
            ? _value._substitutions
            : substitutions // ignore: cast_nullable_to_non_nullable
                  as List<Substitution>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FootballMatchImpl implements _FootballMatch {
  const _$FootballMatchImpl({
    required this.id,
    required this.utcDate,
    required this.status,
    this.matchday,
    this.stage,
    required this.homeTeam,
    required this.awayTeam,
    required this.score,
    final List<Goal> goals = const [],
    final List<Booking> bookings = const [],
    final List<Substitution> substitutions = const [],
  }) : _goals = goals,
       _bookings = bookings,
       _substitutions = substitutions;

  factory _$FootballMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$FootballMatchImplFromJson(json);

  @override
  final int id;
  @override
  final String utcDate;
  @override
  final String status;
  @override
  final int? matchday;
  @override
  final String? stage;
  @override
  final MatchTeam homeTeam;
  @override
  final MatchTeam awayTeam;
  @override
  final Score score;
  final List<Goal> _goals;
  @override
  @JsonKey()
  List<Goal> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  final List<Booking> _bookings;
  @override
  @JsonKey()
  List<Booking> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  final List<Substitution> _substitutions;
  @override
  @JsonKey()
  List<Substitution> get substitutions {
    if (_substitutions is EqualUnmodifiableListView) return _substitutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_substitutions);
  }

  @override
  String toString() {
    return 'FootballMatch(id: $id, utcDate: $utcDate, status: $status, matchday: $matchday, stage: $stage, homeTeam: $homeTeam, awayTeam: $awayTeam, score: $score, goals: $goals, bookings: $bookings, substitutions: $substitutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FootballMatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.utcDate, utcDate) || other.utcDate == utcDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.matchday, matchday) ||
                other.matchday == matchday) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            const DeepCollectionEquality().equals(
              other._substitutions,
              _substitutions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    utcDate,
    status,
    matchday,
    stage,
    homeTeam,
    awayTeam,
    score,
    const DeepCollectionEquality().hash(_goals),
    const DeepCollectionEquality().hash(_bookings),
    const DeepCollectionEquality().hash(_substitutions),
  );

  /// Create a copy of FootballMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FootballMatchImplCopyWith<_$FootballMatchImpl> get copyWith =>
      __$$FootballMatchImplCopyWithImpl<_$FootballMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FootballMatchImplToJson(this);
  }
}

abstract class _FootballMatch implements FootballMatch {
  const factory _FootballMatch({
    required final int id,
    required final String utcDate,
    required final String status,
    final int? matchday,
    final String? stage,
    required final MatchTeam homeTeam,
    required final MatchTeam awayTeam,
    required final Score score,
    final List<Goal> goals,
    final List<Booking> bookings,
    final List<Substitution> substitutions,
  }) = _$FootballMatchImpl;

  factory _FootballMatch.fromJson(Map<String, dynamic> json) =
      _$FootballMatchImpl.fromJson;

  @override
  int get id;
  @override
  String get utcDate;
  @override
  String get status;
  @override
  int? get matchday;
  @override
  String? get stage;
  @override
  MatchTeam get homeTeam;
  @override
  MatchTeam get awayTeam;
  @override
  Score get score;
  @override
  List<Goal> get goals;
  @override
  List<Booking> get bookings;
  @override
  List<Substitution> get substitutions;

  /// Create a copy of FootballMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FootballMatchImplCopyWith<_$FootballMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
