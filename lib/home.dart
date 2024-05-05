import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter212/class.dart';
import 'package:flutter212/film.dart';
import 'package:gap/gap.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'film_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Icon(CupertinoIcons.film),
        ),
        title: const Text("Movie Plus", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
        actions: const [
          Padding(
          padding: EdgeInsets.all(10),
          child: Icon(CupertinoIcons.search),
        )
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        items: [
          SalomonBottomBarItem(icon: const Icon(Icons.video_chat), title: const Text('Feeds')),
          SalomonBottomBarItem(icon: const Icon(CupertinoIcons.bookmark), title: const Text('Saved')),
          SalomonBottomBarItem(icon: const Icon(CupertinoIcons.person_alt_circle), title: const Text('Profile')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: ListView(
          children: [
            const Text('Recent', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
            const Gap(8),
            SizedBox(
              height: 550,
              width: 350,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: films.length,
                  itemBuilder: (context, index) => FilmItem(trailer: films[index], onClick: (){
                    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => TheFilm(abFilm: films[index],)));
                  },)
              ),
            ),
            const Gap(15),
            SizedBox(
              height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: otherFilms.length,
                  itemBuilder: (context, index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        width: 220,
                        height: 60,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset('assets/img/${otherFilms[index]}.jpg', fit: BoxFit.cover,)
                        ),
                      ),
                    ),
                  )
                )
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}
