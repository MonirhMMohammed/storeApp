// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:storemonirh/constants.dart';
import 'package:storemonirh/models/product.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final VoidCallback press;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 190,
      child: InkWell(
        onTap: widget.press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color.fromARGB(174, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black26),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 160,
                  width: 200,
                  child: Image(
                    image: AssetImage(widget.product.image),
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              bottom: 0.0,
              right: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(widget.product.title,
                          style: TextStyle(fontSize: 25)),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        widget.product.subTitle,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(177, 45, 63, 104),
                            borderRadius: BorderRadius.circular(40)),
                        child: Text('السعر \$${widget.product.price}'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
