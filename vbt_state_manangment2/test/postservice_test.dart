/*import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vbt_state_manangment2/feature/model/post_model.dart';

import 'package:vbt_state_manangment2/main.dart';
import 'package:vexana/vexana.dart';

void main() {
  INetworkManager? manager;
  setUp(() {
    const String baseUrl =
        "https://jsonplaceholder.typicode.com/posts?userId=1";
    manager = NetworkManager(options: BaseOptions(baseUrl: baseUrl));
    manager?.dioInterceptors.add(PrettyDioLogger());
  });
  test("Post Service test", () async {
    final response = await manager?.send<PostModel, PostModel>('',
        parseModel: PostModel(), method: RequestType.GET);
    print(response?.data);
    expect(response, isNotNull);
  });
}
*/