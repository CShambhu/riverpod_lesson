import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/providers/quote_provider.dart';

class QuoteScreen extends ConsumerWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quote = ref.watch(dailyQuoteProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Quote of the Day")),

      body: Text(quote, style: TextStyle(fontSize: 32)),
    );
  }
}
