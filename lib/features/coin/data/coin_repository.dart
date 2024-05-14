import 'dart:convert';
import 'dart:io';
import 'package:espressocash/constants/paths.dart';
import 'package:espressocash/features/coin/domain/coin_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'coin_repository.g.dart';

class CoinsRepository {
  Future<Coin> fetchCoin({required String id}) async {
    try {
      final response = await http.get(Uri.parse('${Paths.coingecko}coins/$id'));

      if (response.statusCode == 200) {
        return Coin.fromApiJson(jsonDecode(response.body));
      } else {
        throw Exception('Error fetching Coin: ${response.statusCode}');
      }
    } on SocketException {
      throw Exception('No internet connection');
    } catch (e) {
      throw Exception('Failed to load Coin data: $e');
    }
  }
}

@riverpod
CoinsRepository coinsRepository(Ref ref) {
  return CoinsRepository();
}
