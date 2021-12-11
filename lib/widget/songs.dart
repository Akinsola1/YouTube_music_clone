import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:youtube_music_clone/models/data.dart';

class songs extends StatelessWidget {
  const songs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 300,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(topSongs.length, (index) {
          return Row(
              children: [
                Image.asset(
                  topSongs[index]['image_cover'],
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      topSongs[index]['name'],
                      style: TextStyle(color: Colors.white,overflow: TextOverflow.fade ,fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        topSongs[index]['isDownloaded']
                        ? const Icon(
                            Icons.check_circle,
                             size: 16, color: Colors.grey
                          )
                        : const Icon(
                            Icons.explicit,
                             size: 17, color: Colors.grey
                          ),
                       const  SizedBox( width: 8,),
                        Text(
                          topSongs[index]['artist'],
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                   LineIcons.verticalEllipsis,
                  size: 20, color: Colors.white
                )
              ],
            );
        }),
      )
    );
  }
}
