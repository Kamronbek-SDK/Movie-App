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
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    Column(
                      children: [
                        Text(abFilm.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("Runtime: ${abFilm.runtime}", style: const TextStyle(color: Colors.white, ),)
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.play_circle, color: Colors.white,)),
                        IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.bookmark, color: Colors.white,))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
