import 'package:flutter/material.dart';

class latest_release extends StatelessWidget {
  const latest_release({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.13,
      width: size.width,
      decoration: BoxDecoration(
        color: Color(0xff212121),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LATEST RELEASE',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 15,
                    fontWeight: FontWeight.w200
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Tell Me Your Feelings And I Wont Tell',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis
                  ),
                ), 
               const SizedBox(
                  height: 6,
                ),
                Text(
                  'EP • 2021',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w200
                  ),
                ), 
              ],
            ),
            Spacer(),
            Image.asset('assets/images/powfu_album4.jpeg', height: 73, width: 73,),
          ],
        ),
      ),
    );
  }
}