import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'EXPLORE',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}