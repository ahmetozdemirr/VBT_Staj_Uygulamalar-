import 'package:flutter/cupertino.dart';
import 'package:vexana/vexana.dart';

abstract class BaseVieModel {
  late BuildContext myContext;
  INetworkManager get networkManager =>
      NetworkManager(options: BaseOptions(baseUrl: ''));
  void setContext(BuildContext context);
  void init();
}
