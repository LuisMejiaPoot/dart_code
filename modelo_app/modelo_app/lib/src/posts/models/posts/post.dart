class Post {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );
  }

  static List<Map<String, dynamic>> fromJsonList(List<dynamic> jsonList) {
    List<Map<String, dynamic>> posts = [];
    int cont = 0;
    for (var jsonData in jsonList) {
      final x = Post.fromJson(jsonData);
      cont++;
      posts.add({
        "userId": x.userId,
        "id": x.id,
        "title": x.title,
        "body": x.body,
      });
      if (cont == 5) {
        break;
      }
    }
    return posts;
  }
}
