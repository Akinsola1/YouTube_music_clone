import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:youtube_music_clone/models/data.dart';

class CurrerntSong extends StatelessWidget {
  const CurrerntSong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF535353),
        elevation: 0,
        leading: IconButton(
          icon:const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Container(
          height: 35,
          width: 140,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(40)),
          child: Row(
            children: [
              Container(
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                    //
                    color: Color(0xff606060),
                    borderRadius: BorderRadius.circular(40)),
                child: const Center(
                  child: Text(
                    'Song',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              const Text(
                'Video',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(LineIcons.verticalEllipsis,
                  size: 20, color: Colors.white)),
        ],
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: Color(0xFF535353),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: size.height * 0.4,
                        width: size.width * 0.85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image:
                                    AssetImage(New_release[5]['image_cover']),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: size.height * 0.4,
                        width: size.width * 0.85,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.transparent, Colors.black])),
                      ),
                      Positioned(
                          top: 10,
                          left: 280,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cast),
                            color: Colors.white,
                          )),
                      Positioned(
                        bottom: 140,
                        left: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xff606060),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(LineIcons.share),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xff606060),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.download_for_offline_rounded),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xff606060),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.playlist_add),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xff606060),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.radio),
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 280,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.fullscreen,
                                color: Colors.white),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.thumb_down_off_alt,
                                color: Colors.white,
                              ),
                            ),
                            const Text('Remember This',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.thumb_up_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'NF',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 20),
                        Stack(
                          children: [
                            Container(
                              width: size.width,
                              height: 2,
                              color: Colors.grey,
                            ),
                            Container(
                              width: 100,
                              height: 2,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              '1:20',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '3:26',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shuffle,
                                  size: 25,
                                  color: Colors.grey,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.skip_previous,
                                  size: 30,
                                  color: Colors.white,
                                )),
                            Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Color(0xFF757474),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      size: 30,
                                      color: Colors.white,
                                    ))),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.skip_next,
                                  size: 30,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.repeat,
                                  size: 25,
                                  color: Colors.grey,
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              height: size.height * 0.09,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Color(0xff606060),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: size.width * 0.13,
                    height: 3.5,
                    decoration: BoxDecoration(
                        color: Color(0xFF757474),
                        borderRadius: BorderRadius.circular(20))),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'UP NEXT',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'LYRICS',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'RELATED',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
