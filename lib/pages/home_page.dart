import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/components/room_slide.dart';
import 'package:smart_home/pages/category_page.dart';
import 'package:smart_home/pages/room_detail_page.dart';
import 'package:smart_home/pages/room_page.dart';
import 'package:smart_home/providers/category_provider.dart';
import 'package:smart_home/providers/room_provider.dart';

import '../components/category_tag.dart';
import 'category_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final rooms = context.watch<RoomProvider>().rooms;
    final categories = context.watch<CategoryProvider>().categories;

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Room", style: TextStyle(fontSize: 20)),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RoomPage(rooms)));
                    },
                    icon: const Icon(CupertinoIcons.forward, size: 25),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: rooms.length,
                  itemBuilder: (context, index) {
                    return RoomSlide(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                RoomDetailPage(rooms[index])));
                      },
                      room: rooms[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Category", style: TextStyle(fontSize: 20)),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CategoryPage(categories)));
                    },
                    icon: const Icon(CupertinoIcons.forward, size: 25),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryTag(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                CategoryDetailPage(categories[index])));
                      },
                      category: categories[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
