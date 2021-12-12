import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_music_clone/models/data.dart';

class Album extends StatelessWidget {
  const Album({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(albums.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.35,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(albums[index]['image_cover']),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  albums[index]['name'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(Icons.explicit,
                        size: 16, color: Colors.grey),
                        SizedBox(
                          width: 5,
                        ),
                    Text(
                      albums[index]['Year'],
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          );
        })));
  }
}
