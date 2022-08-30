import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              size: 30,
              color: Color(0xFFED648C),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.insert_chart,
              size: 30,
              color: Colors.grey,
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFED648C)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_balance_wallet,
              size: 30,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              size: 30,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
