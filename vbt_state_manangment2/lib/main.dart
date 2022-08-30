import 'package:flutter/material.dart';
import 'package:vbt_state_manangment2/anasayfa.dart';
import 'package:vbt_state_manangment2/feature/postview.dart';
import 'package:vbt_state_manangment2/todo/todoview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          primaryColorDark: Colors.blueGrey,
        ),
        home: AnaSayfa());
  }
}
