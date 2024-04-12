import 'package:hive_flutter/hive_flutter.dart';

class HistoryDatabase {
  List plant = [];

  final _mybox = Hive.box('mybox');

  void initialContent() {
    plant = [
      {'Ocimum tenuiflorum', 'Tulsi'},
      {'Phyllanthus emblica', 'Awala'},
      {'Azadirachta indica', 'Neem'},
    ];
  }

  void loadData() {
    plant = _mybox.get("TODOLIST");
  }

  void updateDatabase() {
    _mybox.put(("TODOLIST"), plant);
  }
}
