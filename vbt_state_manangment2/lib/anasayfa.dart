import 'package:flutter/material.dart';
import 'package:vbt_state_manangment2/feature/postview.dart';
import 'package:vbt_state_manangment2/todo/todoview.dart';

void main() => runApp(AnaSayfa());

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP'),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.09,
              child: Column(
                children: [
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostPage()));
                      },
                      child: Column(
                        children: [
                          const Icon(
                            Icons.http_sharp,
                            size: 50,
                            color: Colors.red,
                          ),
                          const Text(
                            "Http",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TodoPage()));
                    },
                    child: Column(
                      children: [
                        const Icon(
                          Icons.today_outlined,
                          size: 50,
                          color: Colors.red,
                        ),
                        const Text(
                          "ToDo",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
