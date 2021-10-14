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
        name: "Nike Air Mask 101",
        decs:
            "Familiar but always Fresh, the iconic Air 101 is remastered for today's Gen-Z culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 10,
        color: AppColors.blueColor,
        brand: "Nike",
        imgPath: "mask1.png"),
    ShoeModel(
        name: "Converse X Don Toliver",
        decs:
            "Familiar but always Fresh, the iconic Converse is remastered with Don Tolivers Iconic Design.",
        price: 14,
        color: AppColors.yellowColor,
        brand: "Converse",
        imgPath: "mask2.png"),
    ShoeModel(
        name: "Nike Air Mask Series 4",
        decs:
            "Familiar but always Fresh.Gives you savage vibes with classic outfit.",
        price: 4,
        color: AppColors.redColor,
        brand: "Nike",
        imgPath: "mask3.png"),
    ShoeModel(
        name: "Nike Air Max",
        decs: "Eases you when you breath with all new Air Purifire Promax.",
        price: 18,
        color: AppColors.pinkColor,
        brand: "Nike",
        imgPath: "mask4.png"),
    ShoeModel(
        name: "Nike Air High",
        decs:
            "Familiar but always Fresh, the iconic High protects you from being caught up.",
        price: 5,
        color: AppColors.blueColor,
        brand: "Nike",
        imgPath: "mask5.png"),
    ShoeModel(
        name: "Nike Air Promax",
        decs:
            "Familiar but always Fresh. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 9,
        color: AppColors.yellowColor,
        brand: "Nike",
        imgPath: "mask6.png"),
    ShoeModel(
        name: "Abibas MaskHead",
        decs:
            "Familiar but always Fresh,This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 25,
        color: AppColors.redColor,
        brand: "Nike",
        imgPath: "mask7.png"),
    ShoeModel(
        name: "Protector Promax",
        decs:
            "Familiar but always Fresh,. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 184,
        color: AppColors.greyColor,
        brand: "Nike",
        imgPath: "mask8.png"),
  ];
}
