import 'dart:convert';

import 'package:espressocash/constants/paths.dart';
import 'package:espressocash/features/search/domain/coin_search_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_coins_repository.g.dart';

class SearchCoinsRepository {
  Future<List<CoinSearch>> fetchCoins() async {
    try {
      final response =
          await http.get(Uri.parse('${Paths.coingecko}coins/list'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final coins =
            data.map((coinJson) => CoinSearch.fromJson(coinJson)).toList();
        return coins.cast<CoinSearch>();
      } else {
        throw Exception('Failed to load Coins data');
      }
    } on http.ClientException {
      throw Exception('No internet connection');
    } catch (e) {
      throw Exception('Failed to load Coins data: $e');
    }
  }
}

@riverpod
SearchCoinsRepository searchCoinsRepository(Ref ref) {
  return SearchCoinsRepository();
}
