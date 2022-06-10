import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:learn_flutter_hooks/simple_counter_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SimpleCounterApp(),
    ),
  );
}
