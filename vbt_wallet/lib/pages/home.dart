import 'package:flutter/material.dart';
import 'package:vbt_wallet/animation/fade_animation.dart';
import 'package:vbt_wallet/widgets/bottom_navigation_bar.dart';
import 'package:vbt_wallet/widgets/history_wallet.dart';
import 'package:vbt_wallet/widgets/icon_widget.dart';
import 'package:vbt_wallet/widgets/swiper_card.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181B2A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181B2A),
        elevation: 0,
        actions: [
          FadeAnimation(
            delay: 1,
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "VBT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 200, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF272A3F),
                  ),
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                //Kartlar
                SwipperCard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconWidget(
                        title: "Send",
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                          color: Colors.blue,
                        ),
                        color: Color(0xFF17334E),
                        delayAnimation: 1.5),
                    IconWidget(
                        title: "Pay",
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.payment),
                          color: Colors.red,
                        ),
                        color: Color(0xFF411C2E),
                        delayAnimation: 1.7),
                    IconWidget(
                        title: "Withdraw",
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "images/icons8-cash-withdrawal-96.png",
                            width: MediaQuery.of(context).size.width * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                            color: Colors.green,
                          ),
                        ),
                        color: Color(0xFF163333),
                        delayAnimation: 1.9),
                    IconWidget(
                        title: "Bill",
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.receipt),
                          color: Colors.purple,
                        ),
                        color: Color(0xFF32204D),
                        delayAnimation: 2.1),
                    IconWidget(
                        title: "Voucher",
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "images/icons8-voucher-96.png",
                            width: MediaQuery.of(context).size.width * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                            color: Colors.orange,
                          ),
                        ),
                        color: Color(0xFF412D27),
                        delayAnimation: 2.1),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const HistoryWallet(
                    title: "Spotify Subscription",
                    day: "21 jun 2022 ",
                    time: "18:47 am ",
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Spotify_icon.svg/1982px-Spotify_icon.svg.png",
                    isPositive: false,
                    money: "11.39"),
                const HistoryWallet(
                    title: "Pinterest Salary",
                    day: "20 jun 2022 ",
                    time: "09:03 pm ",
                    image:
                        "https://seeklogo.com/images/P/pinterest-logo-8561DDA2E1-seeklogo.com.png",
                    isPositive: true,
                    money: "60.43"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
