import 'package:espressocash/features/coin/domain/coin_history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_model.freezed.dart';

@freezed
class Coin with _$Coin {
  const factory Coin({
    required String id,
    required String name,
    required String description,
    required num usd,
    required List<CoinHistory> history,
  }) = _Coin;

  factory Coin.fromApiJson(Map<String, dynamic> json) {
    return _Coin(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description']['en'] as String,
      usd: json['market_data']['current_price']['usd'] as num,
      history: _getList(
        currentPrice: json['market_data']['current_price']['usd'] as num,
        change1h: json['market_data']['price_change_percentage_1h_in_currency']
            ['usd'] as num,
        change24h: json['market_data']
            ['price_change_percentage_24h_in_currency']['usd'] as num,
        change7d: json['market_data']['price_change_percentage_7d_in_currency']
            ['usd'] as num,
        change14d: json['market_data']
            ['price_change_percentage_14d_in_currency']['usd'] as num,
        change30d: json['market_data']
            ['price_change_percentage_30d_in_currency']['usd'] as num,
        change60d: json['market_data']
            ['price_change_percentage_60d_in_currency']['usd'] as num,
        change200d: json['market_data']
            ['price_change_percentage_200d_in_currency']['usd'] as num,
        change1y: json['market_data']['price_change_percentage_1y_in_currency']
            ['usd'] as num,
      ),
    );
  }

  static List<CoinHistory> _getList({
    required num currentPrice,
    required num change1h,
    required num change24h,
    required num change7d,
    required num change14d,
    required num change30d,
    required num change60d,
    required num change200d,
    required num change1y,
  }) {
    List<CoinHistory> historyList = [];
    DateTime dateTime = DateTime.now();

    historyList.add(CoinHistory(
      date: dateTime,
      price: currentPrice,
    ));

    historyList.add(CoinHistory(
      date: dateTime.subtract(const Duration(hours: 1)),
      price: currentPrice / (1 + change1h / 100),
    ));

    historyList.add(CoinHistory(
      date: dateTime.subtract(const Duration(days: 1)),
      price: currentPrice / (1 + change24h / 100),
    ));

    historyList.add(CoinHistory(
      date: dateTime.subtract(const Duration(days: 7)),
      price: currentPrice / (1 + change7d / 100),
    ));

    historyList.add(CoinHistory(
      date: dateTime.subtract(const Duration(days: 14)),
      price: currentPrice / (1 + change14d / 100),
    ));

    historyList.add(CoinHistory(
      date: dateTime.subtract(const Duration(days: 30)),
      price: currentPrice / (1 + change30d / 100),
    ));

    historyList.add(CoinHistory(
      date: dateTime.subtract(const Duration(days: 60)),
      price: currentPrice / (1 + change60d / 100),
    ));

    historyList.add(CoinHistory(
      date: dateTime.subtract(const Duration(days: 200)),
      price: currentPrice / (1 + change200d / 100),
    ));

    historyList.add(CoinHistory(
      date: dateTime.subtract(const Duration(days: 365)),
      price: currentPrice / (1 + change1y / 100),
    ));

    historyList.sort((a, b) => b.date.compareTo(a.date));
    return historyList;
  }
}
