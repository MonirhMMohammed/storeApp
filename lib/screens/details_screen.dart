// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storemonirh/constants.dart';
import 'package:storemonirh/models/product.dart';
import 'package:storemonirh/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: 20),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.blueGrey,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'رجوع', 
        style: Theme.of(context).textTheme.bodyLarge ,
      ),
    );
  }
}