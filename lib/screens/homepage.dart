import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_music_clone/widget/general_new_release.dart';
import 'package:youtube_music_clone/widget/mixed_for_you.dart';
import 'package:youtube_music_clone/widget/music_options.dart';
import 'package:youtube_music_clone/widget/night_time.dart';
import 'package:youtube_music_clone/widget/quickpick.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Image.asset(
                'assets/images/random_album2.png',
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              Text('Music',
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  )),
              const Spacer(),
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 27,
                width: 27,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/myself.jpeg',
                        ),
                        fit: BoxFit.fitWidth)),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const MusicOption(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Mixed for you',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28)),
              ),
              const MixedForYou(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    Text(
                      'New releases',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'SEE ALL',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
              ),
             const GeneralNewRelease(),
            const SizedBox(
               height: 30,
             ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                   Text(
                     'START RADIO BASED ON A SONG',
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 15,
                       fontWeight: FontWeight.w400
                     ),
                   ),
                    SizedBox(
                height: 10,
              ),
               Text(
                 'Quick picks',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 28,
                   fontWeight: FontWeight.bold
                 ),
               ),
                ],
              ),
            ),
            QuickPick(),
          const  SizedBox(
              height: 20
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'LISTEN AGAIN',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your night-time music',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          const  Nighttime()
            ],
          ),
        ));
  }
}
