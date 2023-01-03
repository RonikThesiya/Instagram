import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  const Like({Key? key}) : super(key: key);

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Notification",style: TextStyle(fontSize: 25,color: Colors.black),),
            ],
          )
        ],
      ),
    ));
  }
}
