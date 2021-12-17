import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:youtube_music_clone/models/data.dart';
import 'package:youtube_music_clone/widget/current_song.dart';

class QuickPick extends StatelessWidget {
  const QuickPick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                height: size.height * 0.39,
                width: size.width * 0.75,
                child: Column(
                  children: List.generate(singles2.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CurrerntSong()));
                },
                        child: Row(
                          children: [
                            Container(
                              height: size.height * 0.06,
                              width: size.width * 0.12,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          single[index]['image_cover']),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(width: 13),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.5,
                                  child: Text(
                                    single[index]['title'],
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    single[index]['isDownloaded']
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
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      single[index]['artist'],
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(LineIcons.verticalEllipsis,
                                size: 20, color: Colors.white)
                          ],
                        ),
                      ),
                    );
                  }),
                )),
          );
        }),
      ),
    );
  }
}
