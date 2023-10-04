import 'dart:convert';

import 'package:modelo_app/manages/fetchServiceManage.dart';
import 'package:modelo_app/src/infrastructure/repository.dart';

class GetPostRepository extends FetchServiceManage
    implements Repository<String, Future<String>> {
  @override
  Future<String> execute(String port) async {
    final responseapi = await get<String, String>(Uri.parse(port));
    return responseapi;
  }
}
