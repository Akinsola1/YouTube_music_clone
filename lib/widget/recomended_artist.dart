import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_music_clone/models/data.dart';

class RecommendedArtist extends StatelessWidget {
  const RecommendedArtist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(recomendedArtist.length, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.23,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(recomendedArtist[index]['image_cover']), fit: BoxFit.cover,
                  ),
                ),
              ),
               const SizedBox(
                height: 5,
              ),
              Text(
                recomendedArtist[index]['name'],
                style: const TextStyle(
                  color:Colors.white,
                  fontSize: 15
                ),
              ),
              Text(
                recomendedArtist[index]['subscribers'],
                style:const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w200
                ),
              )
            ],
          ),
        );
      })),
    );
  }
}
