import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_music_clone/models/data.dart';

class MixedForYou extends StatelessWidget {
  const MixedForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(mixforyou.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.23,
                  width: size.width * 0.45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(mixforyou[index]['Image_cover']),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(mixforyou[index]['title'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 35,
                  width: size.width * 0.4,
                  child: Text(
                    mixforyou[index]['artist'],
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
