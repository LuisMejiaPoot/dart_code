import 'dart:convert';
import 'dart:io';

import 'package:modelo_app/src/infrastructure/use_case.dart';
import 'package:modelo_app/src/posts/domain/repositories/getPostRepository.dart';
import 'package:modelo_app/src/posts/models/posts/post.dart';

class GetPostUseCase implements UseCase<String, Future<List<Map<String, dynamic>>>> {
  final GetPostRepository getPostRepository = GetPostRepository();

  @override
  Future<List<Map<String, dynamic>>> execute([String? url]) async {
    // how to call getPostRepository
    final response = await getPostRepository
        .execute(url ?? "https://jsonplaceholder.typicode.com/posts");
    final List<dynamic> data = json.decode(response);
    return Post.fromJsonList(data);
  }
}
