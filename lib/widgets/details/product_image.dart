
// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';


class ProductImage extends StatefulWidget {
  const ProductImage({
    super.key,
    required this.size, required this.image,
  });

  final Size size;
  final String image;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: widget.size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: widget.size.width * 0.7,
            width: widget.size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image(
            image: AssetImage(widget.image),
            height: widget.size.width * 0.75,
            width: widget.size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
