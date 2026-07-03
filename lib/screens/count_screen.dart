import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/providers/counter_provider.dart';

class CountScreen extends ConsumerWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(counterProvider, (previous, next) {
      if (next == 10) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Congratulations!")));
      }
    });

    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Count Screen")),
      body: Center(child: Text("$count", style: TextStyle(fontSize: 22))),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => ref.read(counterProvider.notifier).decrement(),
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 15),
          FloatingActionButton(
            onPressed: () => ref.read(counterProvider.notifier).increment(),
            child: Icon(Icons.add),
          ),
          SizedBox(width: 15),
          FloatingActionButton(
            onPressed: () => ref.read(counterProvider.notifier).reset(),
            child: Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }
}
