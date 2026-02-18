import '../../../core/api/api_client.dart';
import '../../../core/api/endpoints.dart';
import '../../matches/domain/match.dart';

class PlayersRepository {
  final ApiClient _api;

  PlayersRepository(this._api);

  Future<List<FootballMatch>> getPlayerMatches(int id) async {
    final response = await _api.get(Endpoints.playerMatches(id));
    final list = response.data['matches'] as List;
    return list.map((e) => FootballMatch.fromJson(e)).toList();
  }
}
