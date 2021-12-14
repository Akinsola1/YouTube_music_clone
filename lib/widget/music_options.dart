import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_music_clone/models/data.dart';

class MusicOption extends StatelessWidget {
  const MusicOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(options.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Color(0xff212121),
                border: Border.all(color: Colors.grey.shade700),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Text(
                  options[index]['title'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          );
        })));
  }
}
