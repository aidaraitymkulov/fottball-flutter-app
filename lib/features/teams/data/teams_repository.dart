import '../../../core/api/api_client.dart';
import '../../../core/api/endpoints.dart';
import '../domain/team.dart';
import '../../matches/domain/match.dart';

class TeamsRepository {
  final ApiClient _api;

  TeamsRepository(this._api);

  Future<Team> getTeam(int id) async {
    final response = await _api.get(Endpoints.team(id));
    return Team.fromJson(response.data);
  }

  Future<List<FootballMatch>> getTeamMatches(
    int id, {
    String? status,
    int limit = 10,
  }) async {
    final response = await _api.get(
      Endpoints.teamMatches(id),
      queryParameters: {
        if (status != null) 'status': status,
        'limit': limit,
      },
    );
    final list = response.data['matches'] as List;
    return list.map((e) => FootballMatch.fromJson(e)).toList();
  }
}
