import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:vbt_state_manangment/core/base/baseview_model.dart';
import 'package:vbt_state_manangment/feature/home_page/model/makeup_model.dart';
import 'package:vbt_state_manangment/feature/home_page/service/makeup_service.dart';
part 'makeupmodel.g.dart';

class MakeupViewModel = _MakeupViewModelBase with _$MakeupViewModel;

abstract class _MakeupViewModelBase with Store, BaseVieModel {
  late INetworkService networkService;

  @override
  void setContext(BuildContext context) => this.myContext = context;

  @override
  void init() {
    networkService = MakeUpService(networkManager);
    getAllProducts();
  }

  @observable
  bool isLoading = true;

  void changeLoading() {
    isLoading = !isLoading;
  }

  @observable
  List<MakeUpModel>? productList;

  @action
  Future<void> getAllProducts() async {
    changeLoading();
    productList = await networkService.fetchProduct();
    changeLoading();
  }
}
