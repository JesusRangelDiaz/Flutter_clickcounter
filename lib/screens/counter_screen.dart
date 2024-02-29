
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int counter=0;

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
      floatingActionButton: const CustomFloatingActions(),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(Icons.exposure_minus_1),
          onPressed: null,
        ),
    
        FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(Icons.exposure_zero),
          onPressed: null,
          ),
    
        FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(Icons.plus_one),
          onPressed: null,
          ),
          
      ],
    );
  }
}