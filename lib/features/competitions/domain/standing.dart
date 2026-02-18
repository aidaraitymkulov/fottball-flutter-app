import 'package:freezed_annotation/freezed_annotation.dart';

part 'standing.freezed.dart';
part 'standing.g.dart';

@freezed
class StandingTeam with _$StandingTeam {
  const factory StandingTeam({
    required int id,
    required String name,
    String? shortName,
    String? crest,
  }) = _StandingTeam;

  factory StandingTeam.fromJson(Map<String, dynamic> json) =>
      _$StandingTeamFromJson(json);
}

@freezed
class StandingRow with _$StandingRow {
  const factory StandingRow({
    required int position,
    required StandingTeam team,
    required int playedGames,
    required int won,
    required int draw,
    required int lost,
    required int points,
    required int goalsFor,
    required int goalsAgainst,
    required int goalDifference,
  }) = _StandingRow;

  factory StandingRow.fromJson(Map<String, dynamic> json) =>
      _$StandingRowFromJson(json);
}

@freezed
class StandingTable with _$StandingTable {
  const factory StandingTable({
    required String type,
    String? group,
    required List<StandingRow> table,
  }) = _StandingTable;

  factory StandingTable.fromJson(Map<String, dynamic> json) =>
      _$StandingTableFromJson(json);
}
