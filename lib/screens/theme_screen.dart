import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/providers/theme_provider.dart';

class ThemeScreen extends ConsumerWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(title: Text(" Mode : Dark or Light ")),
      body: Column(
        children: [
          Center(child: Text(isDarkMode ? "Dark Mode" : "Light Mode")),
          Switch(
            value: isDarkMode,
            onChanged: (_) => ref.read(themeProvider.notifier).toggle(),
          ),
        ],
      ),
    );
  }
}
