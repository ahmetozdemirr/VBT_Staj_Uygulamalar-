import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vbt_state_manangment/core/base/base_view.dart';
import 'package:vbt_state_manangment/feature/home_page/model/makeup_model.dart';
import 'package:vbt_state_manangment/feature/home_page/viewmodel/makeupmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProductColor> renkler = [];
    return BaseView<MakeupViewModel>(
        viewModel: MakeupViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, MakeupViewModel viewmodel) {
          return Scaffold(
            body: Observer(builder: (_) {
              return viewmodel.isLoading
                  ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int i) {
                        return Card(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.network(
                                      viewmodel.productList?[i].imageLink ??
                                          'null')),
                              Text(
                                viewmodel.productList?[i].name ?? '',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Category: ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                      viewmodel.productList?[i].category ?? ''),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(viewmodel.productList?[i].priceSign ??
                                      ''),
                                  Text(viewmodel.productList?[i].price ?? ''),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(viewmodel.productList?[i].rating
                                        .toString() ??
                                    ''),
                              ),

                              /* Container(
                                child: Swiper(
                                  itemCount: ,
                                  layout: SwiperLayout.TINDER,
                                  itemWidth: 10,
                                  itemHeight: 10,
                                  itemBuilder: (context, i) {
                                    ProductColor? cards = viewmodel
                                        .productList?[i].productColors?[i];
                                    return Stack(
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .015,
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: Colors.accents,
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomCenter,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.5),
                                                      blurRadius: 7,
                                                      offset:
                                                          const Offset(0, 3),
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),*/
                            ],
                          ),
                        );
                      })
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            }),
          );
        });
  }
}
