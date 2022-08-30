import 'package:flutter/material.dart';
import 'package:vbt_staj_proje1/widgets/image_container.dart';

class Stf extends StatefulWidget {
  const Stf({Key? key}) : super(key: key);

  @override
  State<Stf> createState() => _StfState();
}

int _basari = 0;
int _proje = 0;

String url1 =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZtcE0zPG41wdIwBxXlPDSWXbevWn8Cm5muoNq2Uv56t8G8IOwPgSWVYeO0Ez2YZ3dtiM&usqp=CAU";
String url2 =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZtcE0zPG41wdIwBxXlPDSWXbevWn8Cm5muoNq2Uv56t8G8IOwPgSWVYeO0Ez2YZ3dtiM&usqp=CAU";
String url3 =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZtcE0zPG41wdIwBxXlPDSWXbevWn8Cm5muoNq2Uv56t8G8IOwPgSWVYeO0Ez2YZ3dtiM&usqp=CAU";

class _StfState extends State<Stf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imageContainer(url: url1),
                imageContainer(url: url2),
                imageContainer(url: url3),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: imageContainer(url: url1),
                title: Text(
                  "Stajyer",
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Başarı "),
                        Text("$_basari"),
                        InkWell(
                            onTap: (() {
                              setState(() {
                                _basari++;
                              });
                            }),
                            child: const Icon(Icons.add)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Proje Sayısı"),
                        Text("$_proje"),
                        InkWell(
                          child: const Icon(Icons.add),
                          onTap: () {
                            setState(() {
                              _proje++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              print("Geri");
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'VBT',
          style: TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          InkWell(onTap: () {}, child: const Icon(Icons.home)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.access_alarm_outlined))
        ]);
  }
}
