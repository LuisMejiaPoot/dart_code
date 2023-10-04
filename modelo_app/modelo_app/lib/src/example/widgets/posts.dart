import 'package:flutter/material.dart';
import 'package:modelo_app/src/example/widgets/post.dart';
import 'package:modelo_app/src/posts/useCase/get_post_use_case.dart';

// ignore: camel_case_types
class posts extends StatelessWidget {
  const posts({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final Widget verticalSpace = SizedBox(height: 20.0);
    final GetPostUseCase getPostUseCase = GetPostUseCase();
    return Column(
        children: [
          verticalSpace,
          SizedBox(
            height: 500,
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: getPostUseCase.execute(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator(); // Loading indicator while fetching data.
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  final data = snapshot.data;
                  return ListView.builder(
                    itemCount: data!.length,
                    itemBuilder: (context, index) {
                      return MyDataWidget(data[index]);
                    },
                  );
                }
              },
            ),
          )
        ],
      );
  }
}