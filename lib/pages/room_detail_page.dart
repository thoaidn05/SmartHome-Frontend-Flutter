import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/room.dart';

class RoomDetailPage extends StatefulWidget {
  final Room room;

  const RoomDetailPage(this.room, {super.key});

  @override
  State<RoomDetailPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(widget.room.name),
        ),
      ),
    );
  }
}
