import 'package:flutter/material.dart';
import 'componants/app_drawer.dart';
import 'componants/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold ( 
      appBar : AppBar(
        title : const Text('قائمتي'),
        centerTitle : true,
        backgroundColor : Colors.blueGrey,
        actions: [
          PopupMenuButton(
            icon : const Icon(Icons.more_vert),
            itemBuilder : (_) => [
              const PopupMenuItem(
                value : 'Settings',
                child : Text('Settings'),
              ),
              const PopupMenuItem(
                value : 'About',
                child : Text('About'),
              ), 
              const PopupMenuItem(
                value : 'Help',
                child : Text('Help'),
              ),
              
            ]
          )
        ],
      ),
      body : const body(),
      
      drawer: const Appdeawer(),

    );
  }
}