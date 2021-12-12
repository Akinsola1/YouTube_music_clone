import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_music_clone/models/data.dart';

class FeaturedOn extends StatelessWidget {
  const FeaturedOn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(featuredOn.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.23,
                width: size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(image: AssetImage(featuredOn[index] ['image_cover']), fit: BoxFit.cover)
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  featuredOn[index] ['name'],
                  style:const  TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  featuredOn[index] ['subtitle'],
                  style:const  TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          );
        })
      ),
    );
  }
}