import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/announcement.dart';

class AnnouncementListTile extends StatelessWidget {
  final Announcement announcement;

  const AnnouncementListTile({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(announcement.title),
      subtitle: Text(announcement.description),
    );
  }
}
