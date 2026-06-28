import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quote_provider.g.dart';

@riverpod
String dailyQuote(Ref ref) {
  return "Code never lies, Comments sometimes do";
}
