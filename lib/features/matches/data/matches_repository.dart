import '../../../core/api/api_client.dart';
import '../../../core/api/endpoints.dart';
import '../domain/match.dart';

class MatchesRepository {
  final ApiClient _api;

  MatchesRepository(this._api);

  Future<FootballMatch> getMatch(int id) async {
    final response = await _api.get(Endpoints.match(id));
    return FootballMatch.fromJson(response.data);
  }
}
