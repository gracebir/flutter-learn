import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("You have to push the  button this many times"),
          Text(
            _counter.toString(),
            style: const TextStyle(fontSize: 28),
          ),
          ElevatedButton(onPressed: increment, child: const Text("Increment!"))
        ],
      ),
    ));
  }
}
