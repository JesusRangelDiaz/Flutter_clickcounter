
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter=0;

  void increase(){
    counter++;
    setState(() {});
  }

  void decrease(){
    counter--;
    setState(() {});
  }

  void reset(){
    counter=0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(increaseFn: increase, decreaseFn: decrease, resetFn: reset, ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    super.key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: ()=> decreaseFn(),
          child: const Icon(Icons.exposure_minus_1),
        ),
    
        FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: ()=> resetFn(),
          child: const Icon(Icons.exposure_zero),
          ),
    
        FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: ()=> increaseFn(),
          child: const Icon(Icons.plus_one),
          ),
      ],
    );
  }
}