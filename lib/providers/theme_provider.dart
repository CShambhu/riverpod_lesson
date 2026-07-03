import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  bool build() {
    return false;
  }

  void toggle() {
    state = !state;
  }
}
