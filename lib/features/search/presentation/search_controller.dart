import 'package:espressocash/features/search/data/search_coins_repository.dart';
import 'package:espressocash/features/search/domain/coin_search_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.g.dart';

@Riverpod(keepAlive: true)
class SearchController extends _$SearchController {
  @override
  FutureOr<List<CoinSearch>> build() async {
    return await ref.read(searchCoinsRepositoryProvider).fetchCoins();
  }
}

List<CoinSearch> filterCoinSearchList({
  required List<CoinSearch> coinSearchList,
  required String searchText,
}) {
  if (searchText.isNotEmpty) {
    return coinSearchList
        .where((coinSearch) =>
            coinSearch.name.toLowerCase().startsWith(searchText.toLowerCase()))
        .toList();
  }
  return coinSearchList;
}
