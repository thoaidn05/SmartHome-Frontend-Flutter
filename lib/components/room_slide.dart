
import 'package:flutter/material.dart';

import '../models/room.dart';

class RoomSlide extends StatelessWidget {
  final Room room;
  final void Function()? onTap;

  const RoomSlide({super.key,required this.room, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(room.image, fit: BoxFit.cover, height: 200, width: 300,),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  room.name,
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
