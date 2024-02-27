class Announcement {
  final int id;
  final String title;
  final String description;
  final bool isRead;
  final String createdAt;

  Announcement(
      {required this.createdAt,
      required this.isRead,
      required this.id,
      required this.title,
      required this.description});
}
