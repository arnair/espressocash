import 'package:espressocash/features/coin/data/coin_repository.dart';
import 'package:espressocash/features/coin/domain/coin_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'coin_controller.g.dart';

@Riverpod(keepAlive: true)
class CoinController extends _$CoinController {
  @override
  Future<Coin> build(String id) async {
    return ref.read(coinsRepositoryProvider).fetchCoin(id: id);
  }
}
