import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'class.dart';
import 'film.dart';

class FilmItem extends StatelessWidget {
  const FilmItem({super.key, required this.trailer, required this.onClick});
  final Film trailer;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 12,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            elevation: 8,
            child: Ink(
              height: 450,
                width: MediaQuery.of(context).size.width - 50,
                child: ClipRRect(borderRadius: BorderRadius.circular(22),
                  //child: Image.asset('assets/img/${trailer.image}.png',fit: BoxFit.cover),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/img/${trailer.image}.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: onClick,
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ),
        ),
        const Gap(10),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(trailer.title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(trailer.genre, style: const TextStyle(color: Colors.grey, fontSize: 15),),
        ),
      ],
    );
  }
}
