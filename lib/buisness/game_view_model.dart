import 'entities/cell.dart';

enum GameModes {
  ceo,
}

class GameViewModel {
  List<Cell> selectedmode = [];

  selectMode(GameModes mode) {
    //TODO generate modes
    selectedmode = [];
  }
}
