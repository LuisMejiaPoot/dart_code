import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  final List<Map<String, dynamic>> posts;

  PostList({required this.posts});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          final post = posts[index];
          return ListTile(
            title: Text(post[index]["title"] ?? 'No title'),
            subtitle: Text(post[index]["body"] ?? 'No body'),
          );
        },
      ),
    );
  }
}



class MyDataWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  MyDataWidget(this.data);

  @override
  Widget build(BuildContext context) {
    final name = "${data["id"]} ${data["title"]}";
    return ListTile(
      title: Text(name),
      subtitle: Text(data["body"] ?? 'No body'),
      // Add more widgets as needed based on your data structure.
    );
  }
}