import '../../../core/api/api_client.dart';
import '../../../core/api/endpoints.dart';
import '../domain/players.dart';
import '../../matches/domain/match.dart';

class PlayersRepository {
  final ApiClient _api;

  PlayersRepository(this._api);

  // Профиль игрока
  Future<PlayerProfile> getPlayerProfile(int id) async {
    final response = await _api.get(Endpoints.player(id));
    return PlayerProfile.fromJson(response.data);
  }

  // Матчи игрока в активных турнирах
  Future<List<FootballMatch>> getPlayerMatches(int id) async {
    final response = await _api.get(Endpoints.playerMatches(id));
    final list = response.data['matches'] as List;
    return list.map((e) => FootballMatch.fromJson(e)).toList();
  }
}
