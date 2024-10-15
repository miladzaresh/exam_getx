class TodoViewMode {
  final int userId;
  final int id;
  final String title;

  final String body;

  TodoViewMode({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory TodoViewMode.fromJson(Map<String, dynamic> json) => TodoViewMode(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body'],
      );
}
