// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dailyQuote)
final dailyQuoteProvider = DailyQuoteProvider._();

final class DailyQuoteProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  DailyQuoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dailyQuoteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dailyQuoteHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return dailyQuote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$dailyQuoteHash() => r'961d3cf76622ee48607db8392793c037f86cde6e';
