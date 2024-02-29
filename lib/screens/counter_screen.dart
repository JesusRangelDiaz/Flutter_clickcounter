
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int counter=10;

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize35 = const TextStyle(fontSize: 35);
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 1,
        title:const Text('CounterScreen'),
      ) ,
      backgroundColor: Colors.greenAccent,
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text('Número de clicks', style: fontSize35),
                Text('$counter', style: fontSize30)
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: const Icon(Icons.plus_one),
        onPressed: () {
          counter++;
          setState((){});
        },
        ),
        
    );
  }
}