import 'package:flutter/cupertino.dart';

import '../models/room.dart';

class RoomProvider extends ChangeNotifier{
  final List<Room> _rooms = [
    Room(id: 1, name: "Bed Room", image: "assets/images/bed-room.jpg"),
    Room(id: 2, name: "Living Room", image: "assets/images/living-room.jpg"),
    Room(id: 3, name: "Bath Room", image: "assets/images/bath-room.jpg"),
  ];

  List<Room> get rooms => _rooms;

  void addRoom(Room room) {
    _rooms.add(room);
    notifyListeners();
  }

  void removeRoom(Room room) {
    _rooms.remove(room);
    notifyListeners();
  }
}