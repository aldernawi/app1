import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  @override
  final String name;
  final String avatar;
  const welcome({super.key, required this.name,required this.avatar});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
        children: [
          Text( "Hi $name",style: const TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
          Padding(padding: const EdgeInsets.only(left: 10.0),
          child: Image(image: AssetImage(avatar),),

          ),
        ],
      ),
      const CircleAvatar(
        backgroundImage: AssetImage('assets/icons/hand-emoji.png'),
      )

      ],

      ),
    );
  }
}