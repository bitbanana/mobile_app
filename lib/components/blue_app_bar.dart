import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BlueAppBar extends AppBar {
  BlueAppBar({Key? key, required String title, bool canBack = false})
      : super(
          key: key,
          foregroundColor: Colors.yellow,
          title: Text(title),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xff8080ff),
                  Color(0xff000088),
                ],
              ),
            ),
          ),
          automaticallyImplyLeading: canBack,
        );
}
