import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/counterprovidercontroller.dart';

class CounterProviderScreen extends StatefulWidget {
  const CounterProviderScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _CounterProviderScreenState();
  }
}

class _CounterProviderScreenState extends State<CounterProviderScreen> {
  @override
  void initState() {
    super.initState();
    final counterProvider =
        Provider.of<CounterProviderController>(context, listen: false);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      counterProvider.setCounterProvider();
    });
  }

  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterProviderController>(context, listen: false);
    // ignore: avoid_print
    print('build: ${counterProvider.counter}');
    return Scaffold(
      body: Center(child: Consumer<CounterProviderController>(
        builder: (context, value, child) {
          // ignore: avoid_print
          print('Build Only This Widget: ${counterProvider.counter}');
          return Text(
            value.counter.toString(),
            style: const TextStyle(fontSize: 20.0),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.setCounterProvider();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
