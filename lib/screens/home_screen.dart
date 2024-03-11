// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:storemonirh/constants.dart';
import 'package:storemonirh/widgets/home/Home_Body.dart';

  class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 238, 238, 238),
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('متجر الكترونيات', style: TextStyle( color: Colors.black,)) , backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
    );
  }

  }