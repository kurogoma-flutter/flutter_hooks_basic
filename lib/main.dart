import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:learn_flutter_hooks/simple_counter_page.dart';
import 'package:learn_flutter_hooks/text_input_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: SimpleCounterApp(),
      home: TextInputPage(),
    );
  }
}
