import 'package:flutter/material.dart';
import 'package:youtube_music_clone/models/data.dart';
import 'package:youtube_music_clone/screens/artist_page.dart';

class Nighttime extends StatelessWidget {
  const Nighttime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Row(
          children: List.generate(night_music.length, (index) {
            if (index == 0) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const artist_page()));
                },
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(night_music[0]['image_cover']),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      night_music[0]['artist'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image:
                                  AssetImage(night_music[index]['image_cover']),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        night_music[index]['isDownloaded']
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.grey,
                                size: 18,
                              )
                            : const Icon(
                                Icons.explicit,
                                color: Colors.grey,
                                size: 18,
                              ),
                              SizedBox(width: 5,),
                        Text(
                          night_music[index]['title'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
