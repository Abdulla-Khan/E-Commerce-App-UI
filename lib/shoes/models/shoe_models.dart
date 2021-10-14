import 'package:app_shoe_shop/core/const.dart';
import 'package:flutter/cupertino.dart';

class ShoeModel {
  final String name;
  final double price;
  final String decs;
  final Color color;
  final String brand;
  final String imgPath;

  ShoeModel(
      {this.name, this.price, this.decs, this.color, this.brand, this.imgPath});
  static List<ShoeModel> list = [
    ShoeModel(
        name: "Nike Air Jordan 1 Retro High",
        decs:
            "Familiar but always Fresh, the iconic Air jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 134,
        color: AppColors.blueColor,
        brand: "Nike",
        imgPath: "2.png"),
    ShoeModel(
        name: "Converse X OPI Chuck Taylor",
        decs:
            "Familiar but always Fresh, the iconic Air jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 184,
        color: AppColors.yellowColor,
        brand: "Converse",
        imgPath: "1.png"),
    ShoeModel(
        name: "Nike Air Jordan 1 Retro High",
        decs:
            "Familiar but always Fresh, the iconic Air jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 204,
        color: AppColors.redColor,
        brand: "Nike",
        imgPath: "3.png")
  ];
}
