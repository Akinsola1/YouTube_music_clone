import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_music_clone/models/data.dart';

class GeneralNewRelease extends StatelessWidget {
  const GeneralNewRelease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(New_release.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.23,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(New_release[index]['image_cover']),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  New_release[index]['title'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: Row(
                    children: [
                      Text(
                        New_release[index]['artist'],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
