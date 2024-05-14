import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_search_model.g.dart';
part 'coin_search_model.freezed.dart';

@freezed
class CoinSearch with _$CoinSearch {
  const factory CoinSearch({
    required String id,
    required String symbol,
    required String name,
  }) = _CoinSearch;

  factory CoinSearch.fromJson(Map<String, dynamic> json) =>
      _$CoinSearchFromJson(json);
}
