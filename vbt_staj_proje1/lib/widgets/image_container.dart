import 'package:flutter/material.dart';

class imageContainer extends StatelessWidget {
  final String url;
  const imageContainer({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.lightBlue,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.fill,
          )),
    );
  }
}
