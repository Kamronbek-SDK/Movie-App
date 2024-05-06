import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter212/class.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
//import 'package:url_launcher/url_launcher.dart';

class TheFilm extends StatelessWidget {
  const TheFilm({super.key, required this.abFilm});

  final Film abFilm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/${abFilm.image}.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const SizedBox(),
                  Column(
                    children: [
                      Text(
                        abFilm.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Runtime: ${abFilm.runtime} ",
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.play_circle,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.bookmark,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 130,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 130,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, right: 25),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(children: [
                        Text(
                          abFilm.desc,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: SizedBox(
                            height: 190,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: abFilm.images.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Container(
                                    width: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Image.asset(
                                        "assets/img/${abFilm.images[index]}.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          abFilm.desc,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Wrap(
                          children: [
                            const Text('\nRead more: ', style: TextStyle(fontSize: 18,),),
                            CupertinoButton(child: Text(abFilm.link, style: const TextStyle(color: CupertinoColors.activeBlue),), onPressed: (){
                              //_launcher(abFilm.link);
                            }),
                          ],
                        ),
                        Wrap(
                          children: [
                            const Text('\nWatch online: ', style: TextStyle(fontSize: 18,),),
                            CupertinoButton(child: Text(abFilm.watchLink, style: const TextStyle(color: CupertinoColors.activeBlue),), onPressed: (){
                              //_launcher(abFilm.watchLink);
                            }),
                          ],
                        ),
                        const Gap(120),
                      ]),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(.1),
                                Colors.white.withOpacity(.2),
                                Colors.white.withOpacity(.3),
                                Colors.white.withOpacity(.4),
                                Colors.white.withOpacity(.5),
                                Colors.white.withOpacity(.6),
                                Colors.white.withOpacity(.7),
                                Colors.white.withOpacity(.8),
                                Colors.white.withOpacity(.9),
                                Colors.white,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width - 200,
                                height: 55,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                      )
                                    ),
                                    child: const Text(
                                      'BUY TICKET',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                )
                            ),
                            const Gap(15),
                            _star(context, abFilm.rating),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _star(BuildContext context, double rating){
    return RatingBar.builder(
      initialRating: rating,
      allowHalfRating: true,
      ignoreGestures: true,

      itemCount: 5,
      itemSize: 25,
      itemBuilder: (context, index) => const Icon(Icons.star, color: Colors.amber,),
     onRatingUpdate: (double value) {},);
  }

  // void _launcher(String link) async {
  //   await launchUrl(Uri.parse(link));
  // }
}
