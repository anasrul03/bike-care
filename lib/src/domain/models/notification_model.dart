class Notification {
  Notification({
    required this.title,
    required this.body,
    this.isRead = false,
    required this.createdDate,
  });

  final String title;
  final String body;
  final bool isRead;
  final DateTime createdDate;
}
