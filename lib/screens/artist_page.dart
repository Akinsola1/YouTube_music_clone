import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:youtube_music_clone/widget/albums.dart';
import 'package:youtube_music_clone/widget/featured_on.dart';
import 'package:youtube_music_clone/widget/latest_release.dart';
import 'package:youtube_music_clone/widget/recomended_artist.dart';
import 'package:youtube_music_clone/widget/singles.dart';
import 'package:youtube_music_clone/widget/songs.dart';

class artist_page extends StatelessWidget {
  const artist_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.45,
                  width: size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/powfu_cover1.jpg'),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Container(
                  height: size.height * 0.45,
                  width: size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black])),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 14),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share_outlined,
                                  size: 25,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.cast_outlined,
                                  size: 25,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search_outlined,
                                  size: 25,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .22,
                      ),
                      Column(
                        children: const [
                          Text(
                            'Powfu',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'SUBSCRIBE 2.13M',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          button(
                              color: Colors.white,
                              icon: Icons.shuffle_outlined,
                              title: 'SHUFFLE',
                              titleColor: Colors.black),
                          SizedBox(width: 10),
                          button(
                              color: Colors.black,
                              icon: LineIcons.signal,
                              title: 'RADIO',
                              titleColor: Colors.white),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const latest_release(),
                      const SizedBox(height: 30),
                      Row(
                        children: const [
                          Text(
                            'Top songs',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            'SEE ALL',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const songs(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Albums',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Album(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Singles',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'SEE ALL',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Singles(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Featured on',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const FeaturedOn(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Fans might also like',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const RecommendedArtist(),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'About',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          Text(
                            '670,340,416 views',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 20
                          ),
                          Text(
                            'Isaiah Fabar, known professionall as powfi, is a Canadian rapper, songwritter, and record producer. He is the son of the Dave Faber from the band Faber Driver. He amassed popularity following the release of his first charting single, "Death BED, chich peaked at number 23 on the Billboard Hot 100. ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final Color titleColor;
  const button(
      {Key? key,
      required this.color,
      required this.icon,
      required this.title,
      required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .055,
      width: size.width * .45,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: color,
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: titleColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(color: titleColor, fontSize: 15),
          )
        ],
      ),
    );
  }
}
