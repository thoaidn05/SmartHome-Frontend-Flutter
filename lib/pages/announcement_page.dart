import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/components/announcement_list_tile.dart';
import 'package:smart_home/providers/announcement_provider.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({super.key});

  @override
  State<AnnouncementPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<AnnouncementPage> {
  @override
  Widget build(BuildContext context) {
    final announcements = context.watch<AnnouncementProvider>().announcements;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return AnnouncementListTile(announcement: announcements[index]);
        },
      ),
    );
  }
}
