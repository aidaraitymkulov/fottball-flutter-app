import '../../../core/api/api_client.dart';
import '../../../core/api/endpoints.dart';
import '../domain/competition.dart';
import '../domain/standing.dart';
import '../domain/scorer.dart';
import '../../matches/domain/match.dart';
import '../../teams/domain/team.dart';

class CompetitionsRepository {
  final ApiClient _api;

  CompetitionsRepository(this._api);

  Future<List<Competition>> getCompetitions() async {
    final response = await _api.get(Endpoints.competitions);
    final list = response.data['competitions'] as List;
    return list.map((e) => Competition.fromJson(e)).toList();
  }

  Future<List<StandingRow>> getStandings(String code, {String type = 'TOTAL'}) async {
    final response = await _api.get(Endpoints.standings(code));
    final standings = response.data['standings'] as List;
    final table = standings.firstWhere(
      (s) => s['type'] == type,
      orElse: () => standings.first,
    );
    final rows = table['table'] as List;
    return rows.map((e) => StandingRow.fromJson(e)).toList();
  }

  Future<List<FootballMatch>> getMatches(
    String code, {
    int? matchday,
    String? status,
  }) async {
    final response = await _api.get(
      Endpoints.competitionMatches(code),
      queryParameters: {
        if (matchday != null) 'matchday': matchday,
        if (status != null) 'status': status,
      },
    );
    final list = response.data['matches'] as List;
    return list.map((e) => FootballMatch.fromJson(e)).toList();
  }

  Future<List<Team>> getTeams(String code) async {
    final response = await _api.get(Endpoints.competitionTeams(code));
    final list = response.data['teams'] as List;
    return list.map((e) => Team.fromJson(e)).toList();
  }

  Future<List<Scorer>> getScorers(String code) async {
    final response = await _api.get(Endpoints.scorers(code));
    final list = response.data['scorers'] as List;
    return list.map((e) => Scorer.fromJson(e)).toList();
  }
}
