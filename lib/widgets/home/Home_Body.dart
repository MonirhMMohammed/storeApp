// ignore: file_names
// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_escapes, unused_local_variable, use_key_in_widget_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:storemonirh/constants.dart';
import 'package:storemonirh/models/product.dart';
import 'package:storemonirh/screens/details_screen.dart';
import 'package:storemonirh/widgets/home/product_cart.dart';


class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(103, 117, 117, 117),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      setState(() {
                        var push = Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
