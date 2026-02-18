import 'package:freezed_annotation/freezed_annotation.dart';

part 'players.freezed.dart';
part 'players.g.dart';

@freezed
class PlayerTeam with _$PlayerTeam {
  const factory PlayerTeam({
    required int id,
    required String name,
    String? shortName,
    String? crest,
    String? venue,
  }) = _PlayerTeam;

  factory PlayerTeam.fromJson(Map<String, dynamic> json) =>
      _$PlayerTeamFromJson(json);
}

@freezed
class PlayerProfile with _$PlayerProfile {
  const factory PlayerProfile({
    required int id,
    required String name,
    String? firstName,
    String? lastName,
    String? dateOfBirth,
    String? nationality,
    String? position,
    String? section,
    int? shirtNumber,
    PlayerTeam? currentTeam,
  }) = _PlayerProfile;

  factory PlayerProfile.fromJson(Map<String, dynamic> json) =>
      _$PlayerProfileFromJson(json);
}
