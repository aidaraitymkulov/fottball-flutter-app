// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'players.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlayerTeam _$PlayerTeamFromJson(Map<String, dynamic> json) {
  return _PlayerTeam.fromJson(json);
}

/// @nodoc
mixin _$PlayerTeam {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get shortName => throw _privateConstructorUsedError;
  String? get crest => throw _privateConstructorUsedError;
  String? get venue => throw _privateConstructorUsedError;

  /// Serializes this PlayerTeam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerTeam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerTeamCopyWith<PlayerTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerTeamCopyWith<$Res> {
  factory $PlayerTeamCopyWith(
    PlayerTeam value,
    $Res Function(PlayerTeam) then,
  ) = _$PlayerTeamCopyWithImpl<$Res, PlayerTeam>;
  @useResult
  $Res call({
    int id,
    String name,
    String? shortName,
    String? crest,
    String? venue,
  });
}

/// @nodoc
class _$PlayerTeamCopyWithImpl<$Res, $Val extends PlayerTeam>
    implements $PlayerTeamCopyWith<$Res> {
  _$PlayerTeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerTeam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = freezed,
    Object? crest = freezed,
    Object? venue = freezed,
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
            venue: freezed == venue
                ? _value.venue
                : venue // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlayerTeamImplCopyWith<$Res>
    implements $PlayerTeamCopyWith<$Res> {
  factory _$$PlayerTeamImplCopyWith(
    _$PlayerTeamImpl value,
    $Res Function(_$PlayerTeamImpl) then,
  ) = __$$PlayerTeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? shortName,
    String? crest,
    String? venue,
  });
}

/// @nodoc
class __$$PlayerTeamImplCopyWithImpl<$Res>
    extends _$PlayerTeamCopyWithImpl<$Res, _$PlayerTeamImpl>
    implements _$$PlayerTeamImplCopyWith<$Res> {
  __$$PlayerTeamImplCopyWithImpl(
    _$PlayerTeamImpl _value,
    $Res Function(_$PlayerTeamImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerTeam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = freezed,
    Object? crest = freezed,
    Object? venue = freezed,
  }) {
    return _then(
      _$PlayerTeamImpl(
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
        venue: freezed == venue
            ? _value.venue
            : venue // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerTeamImpl implements _PlayerTeam {
  const _$PlayerTeamImpl({
    required this.id,
    required this.name,
    this.shortName,
    this.crest,
    this.venue,
  });

  factory _$PlayerTeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerTeamImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? shortName;
  @override
  final String? crest;
  @override
  final String? venue;

  @override
  String toString() {
    return 'PlayerTeam(id: $id, name: $name, shortName: $shortName, crest: $crest, venue: $venue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerTeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.crest, crest) || other.crest == crest) &&
            (identical(other.venue, venue) || other.venue == venue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, shortName, crest, venue);

  /// Create a copy of PlayerTeam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerTeamImplCopyWith<_$PlayerTeamImpl> get copyWith =>
      __$$PlayerTeamImplCopyWithImpl<_$PlayerTeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerTeamImplToJson(this);
  }
}

abstract class _PlayerTeam implements PlayerTeam {
  const factory _PlayerTeam({
    required final int id,
    required final String name,
    final String? shortName,
    final String? crest,
    final String? venue,
  }) = _$PlayerTeamImpl;

  factory _PlayerTeam.fromJson(Map<String, dynamic> json) =
      _$PlayerTeamImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get shortName;
  @override
  String? get crest;
  @override
  String? get venue;

  /// Create a copy of PlayerTeam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerTeamImplCopyWith<_$PlayerTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerProfile _$PlayerProfileFromJson(Map<String, dynamic> json) {
  return _PlayerProfile.fromJson(json);
}

/// @nodoc
mixin _$PlayerProfile {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get section => throw _privateConstructorUsedError;
  int? get shirtNumber => throw _privateConstructorUsedError;
  PlayerTeam? get currentTeam => throw _privateConstructorUsedError;

  /// Serializes this PlayerProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerProfileCopyWith<PlayerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerProfileCopyWith<$Res> {
  factory $PlayerProfileCopyWith(
    PlayerProfile value,
    $Res Function(PlayerProfile) then,
  ) = _$PlayerProfileCopyWithImpl<$Res, PlayerProfile>;
  @useResult
  $Res call({
    int id,
    String name,
    String? firstName,
    String? lastName,
    String? dateOfBirth,
    String? nationality,
    String? position,
    String? section,
    int? shirtNumber,
    PlayerTeam? currentTeam,
  });

  $PlayerTeamCopyWith<$Res>? get currentTeam;
}

/// @nodoc
class _$PlayerProfileCopyWithImpl<$Res, $Val extends PlayerProfile>
    implements $PlayerProfileCopyWith<$Res> {
  _$PlayerProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? position = freezed,
    Object? section = freezed,
    Object? shirtNumber = freezed,
    Object? currentTeam = freezed,
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
            firstName: freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastName: freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateOfBirth: freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as String?,
            nationality: freezed == nationality
                ? _value.nationality
                : nationality // ignore: cast_nullable_to_non_nullable
                      as String?,
            position: freezed == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as String?,
            section: freezed == section
                ? _value.section
                : section // ignore: cast_nullable_to_non_nullable
                      as String?,
            shirtNumber: freezed == shirtNumber
                ? _value.shirtNumber
                : shirtNumber // ignore: cast_nullable_to_non_nullable
                      as int?,
            currentTeam: freezed == currentTeam
                ? _value.currentTeam
                : currentTeam // ignore: cast_nullable_to_non_nullable
                      as PlayerTeam?,
          )
          as $Val,
    );
  }

  /// Create a copy of PlayerProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerTeamCopyWith<$Res>? get currentTeam {
    if (_value.currentTeam == null) {
      return null;
    }

    return $PlayerTeamCopyWith<$Res>(_value.currentTeam!, (value) {
      return _then(_value.copyWith(currentTeam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerProfileImplCopyWith<$Res>
    implements $PlayerProfileCopyWith<$Res> {
  factory _$$PlayerProfileImplCopyWith(
    _$PlayerProfileImpl value,
    $Res Function(_$PlayerProfileImpl) then,
  ) = __$$PlayerProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? firstName,
    String? lastName,
    String? dateOfBirth,
    String? nationality,
    String? position,
    String? section,
    int? shirtNumber,
    PlayerTeam? currentTeam,
  });

  @override
  $PlayerTeamCopyWith<$Res>? get currentTeam;
}

/// @nodoc
class __$$PlayerProfileImplCopyWithImpl<$Res>
    extends _$PlayerProfileCopyWithImpl<$Res, _$PlayerProfileImpl>
    implements _$$PlayerProfileImplCopyWith<$Res> {
  __$$PlayerProfileImplCopyWithImpl(
    _$PlayerProfileImpl _value,
    $Res Function(_$PlayerProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? position = freezed,
    Object? section = freezed,
    Object? shirtNumber = freezed,
    Object? currentTeam = freezed,
  }) {
    return _then(
      _$PlayerProfileImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateOfBirth: freezed == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as String?,
        nationality: freezed == nationality
            ? _value.nationality
            : nationality // ignore: cast_nullable_to_non_nullable
                  as String?,
        position: freezed == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as String?,
        section: freezed == section
            ? _value.section
            : section // ignore: cast_nullable_to_non_nullable
                  as String?,
        shirtNumber: freezed == shirtNumber
            ? _value.shirtNumber
            : shirtNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        currentTeam: freezed == currentTeam
            ? _value.currentTeam
            : currentTeam // ignore: cast_nullable_to_non_nullable
                  as PlayerTeam?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerProfileImpl implements _PlayerProfile {
  const _$PlayerProfileImpl({
    required this.id,
    required this.name,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.nationality,
    this.position,
    this.section,
    this.shirtNumber,
    this.currentTeam,
  });

  factory _$PlayerProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerProfileImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? dateOfBirth;
  @override
  final String? nationality;
  @override
  final String? position;
  @override
  final String? section;
  @override
  final int? shirtNumber;
  @override
  final PlayerTeam? currentTeam;

  @override
  String toString() {
    return 'PlayerProfile(id: $id, name: $name, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, nationality: $nationality, position: $position, section: $section, shirtNumber: $shirtNumber, currentTeam: $currentTeam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.shirtNumber, shirtNumber) ||
                other.shirtNumber == shirtNumber) &&
            (identical(other.currentTeam, currentTeam) ||
                other.currentTeam == currentTeam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    firstName,
    lastName,
    dateOfBirth,
    nationality,
    position,
    section,
    shirtNumber,
    currentTeam,
  );

  /// Create a copy of PlayerProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerProfileImplCopyWith<_$PlayerProfileImpl> get copyWith =>
      __$$PlayerProfileImplCopyWithImpl<_$PlayerProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerProfileImplToJson(this);
  }
}

abstract class _PlayerProfile implements PlayerProfile {
  const factory _PlayerProfile({
    required final int id,
    required final String name,
    final String? firstName,
    final String? lastName,
    final String? dateOfBirth,
    final String? nationality,
    final String? position,
    final String? section,
    final int? shirtNumber,
    final PlayerTeam? currentTeam,
  }) = _$PlayerProfileImpl;

  factory _PlayerProfile.fromJson(Map<String, dynamic> json) =
      _$PlayerProfileImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get dateOfBirth;
  @override
  String? get nationality;
  @override
  String? get position;
  @override
  String? get section;
  @override
  int? get shirtNumber;
  @override
  PlayerTeam? get currentTeam;

  /// Create a copy of PlayerProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerProfileImplCopyWith<_$PlayerProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
