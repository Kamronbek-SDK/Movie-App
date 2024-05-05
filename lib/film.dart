import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter212/class.dart';

class TheFilm extends StatelessWidget {
  const TheFilm({super.key, required this.abFilm});

  final Film abFilm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) => Expanded(
          child: Stack(
            children: [
              Image.asset(
                "assets/img/${abFilm.image}.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
