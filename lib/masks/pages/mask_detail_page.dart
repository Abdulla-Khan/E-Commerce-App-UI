import 'package:app_shoe_shop/core/const.dart';
import 'package:app_shoe_shop/core/flutter_icons.dart';
import 'package:app_shoe_shop/masks/models/masks_models.dart';
import 'package:app_shoe_shop/masks/widgets/mask_app_clipper.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  final ShoeModel shoeModel;
  const DetailPage(this.shoeModel);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.shoeModel.color,
      appBar: AppBar(
        backgroundColor: widget.shoeModel.color,
        elevation: 0,
        title: const Text("CATEGORIES"),
        leading: IconButton(
          icon: const Icon(FlutterIcons.left_open_1),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .75,
                width: MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: AppClipper(
                    cornerSize: 50,
                    diagonalHeight: 180,
                    roundedBottom: false,
                  ),
                  child: Container(
                    color: Colors.white,
                    padding:
                        const EdgeInsets.only(top: 175, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 305,
                          child: Text(
                            widget.shoeModel.name,
                            style: const TextStyle(
                              fontSize: 32,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        _buildRating(),
                        const SizedBox(height: 10),
                        const Text(
                          "DETAILS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          widget.shoeModel.decs,
                          style: const TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "COLOR OPTIONS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            _buildColorOption(AppColors.blueColor),
                            _buildColorOption(AppColors.greenColor),
                            _buildColorOption(AppColors.orangeColor),
                            _buildColorOption(AppColors.redColor),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: _buildBottom(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 130),
              child: Hero(
                tag: "hero${widget.shoeModel.imgPath}",
                child: Transform.rotate(
                  angle: -math.pi / 7,
                  child: Image(
                    width: MediaQuery.of(context).size.width * .85,
                    image: AssetImage("assets/${widget.shoeModel.imgPath}"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottom() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "PRICE",
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
              Text(
                "\$${widget.shoeModel.price.toInt()}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 50,
            ),
            decoration: BoxDecoration(
              color: AppColors.greenColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: const Text(
              "ADD CART",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return Container(
      width: 20,
      height: 20,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: <Widget>[
        RatingBar(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 20,
          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          onRatingUpdate: (rating) {
            print(rating);
          },
          ratingWidget: null,
        ),
        SizedBox(width: 16),
        Text(
          "134 Reviews",
          style: TextStyle(
            color: Colors.black26,
          ),
        )
      ],
    );
  }
}
