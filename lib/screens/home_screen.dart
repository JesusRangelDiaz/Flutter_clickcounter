
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize35 = const TextStyle(fontSize: 35);
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 1,
        title:const Text('HomeScreen'),
        
      ) ,
      backgroundColor: Colors.greenAccent,
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text('Número de clicks', style: fontSize35),
                Text('25', style: fontSize30)
            ],
          ),
      ),
    );
  }
  
}