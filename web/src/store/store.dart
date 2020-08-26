import '../objects//Player/player.dart' show Player;

class GameStore {
  final currentPlayer = Player(40, 40);
}

final store = GameStore();