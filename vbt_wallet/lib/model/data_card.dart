import 'package:flutter/material.dart';

class Cards {
  final List<Color> color;
  final String name;
  final String icon;
  final String money;
  final String bank;

  Cards(this.color, this.name, this.icon, this.money, this.bank);
}

List<Cards> cardinfo = [
  Cards(const [Color(0xFFE96443), Color(0xFF904E95)], "Vbt",
      "images/amazon.png", "9875.0", "images/mastercard.png"),
  Cards(const [Color(0xFF00D2FF), Color(0xFF928DAB)], "Phexum",
      "images/google-logo.png", "7684.2", "images/neo-cryptocurrency.png"),
  Cards(const [Color(0xFFFFC371), Color(0xFFFF5F6D)], "Flutter",
      "images/mac-os--v2.png", "2645.0", "images/mastercard.png"),
];
