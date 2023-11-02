import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // final countProvider = Provider.of<CountProvider>(context, listen: false);
    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   countProvider.addCounter();
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final countProvider = Provider.of<CountProvider>(context);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (_, value, child) {
            print("Inner Print of Consumer");
            return Text(
              "${value.count}",
              style: const TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // countProvider.addCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
