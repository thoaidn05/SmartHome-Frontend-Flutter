import 'package:flutter/cupertino.dart';
import 'package:smart_home/models/announcement.dart';

class AnnouncementProvider extends ChangeNotifier {
  final List<Announcement> _announcements = [
    Announcement(id: 1, title: "Automation 1", description: "Automation 1 was actived", isRead: false, createdAt: "18:30"),
    Announcement(id: 2, title: "Disconnected", description: "Device 1 was disconnected", isRead: true, createdAt: "13:47"),
    Announcement(id: 3, title: "Automation 2", description: "Automation 2 was actived", isRead: true, createdAt: "06:34"),
  ];

  List<Announcement> get announcements => _announcements;

  void addAnnouncement(Announcement announcement) {
    _announcements.add(announcement);
    notifyListeners();
  }

  void removeAnnouncement(Announcement announcement) {
    _announcements.remove(announcement);
    notifyListeners();
  }
}