import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/models/room.dart';

import '../models/category.dart';

class RoomPage extends StatefulWidget {
  List<Room> rooms;

  RoomPage(this.rooms, {super.key});

  @override
  State<RoomPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.rooms.length,
        itemBuilder: (context, index) {
          return Text(widget.rooms[index].name);
        },
      ),
    );
  }
}
