import 'package:flutter/material.dart';
import 'package:youtube_music_clone/models/data.dart';

class Singles extends StatelessWidget {
  const Singles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(topSongs.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.15,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(topSongs[index]['image_cover']),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: size.width*0.4,
                child: Text(
                  topSongs[index]['name'],
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
                  const Icon(Icons.explicit, color: Colors.grey,size: 18,),
                 const SizedBox(width: 5,),
                  Text(
                    topSongs[index]['year'],
                    style:const TextStyle(
                      color: Colors.grey, 
                    ),
                  )
                ],
              )
            ],
          ),
        );
      })),
    );
  }
}
