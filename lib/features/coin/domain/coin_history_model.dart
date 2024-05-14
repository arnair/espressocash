import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_history_model.freezed.dart';

@freezed
class CoinHistory with _$CoinHistory {
  const factory CoinHistory({
    required DateTime date,
    required num price,
  }) = _CoinHistory;
}
