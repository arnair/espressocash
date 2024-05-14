import 'package:espressocash/common_widgets/async_value_widget.dart';
import 'package:espressocash/constants/textstyles.dart';
import 'package:espressocash/features/search/domain/coin_search_model.dart';
import 'package:espressocash/features/search/presentation/search_card.dart';
import 'package:espressocash/features/search/presentation/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});
  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final coinList = ref.watch(searchControllerProvider).whenData((value) =>
        filterCoinSearchList(
            coinSearchList: value, searchText: _searchController.text));

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TextField(
            cursorColor: Colors.white,
            style: AppTextStyle.normal.copyWith(color: Colors.white),
            controller: _searchController,
            onChanged: (value) => setState(() {}),
            decoration: InputDecoration(
                hintText: 'Search coins...',
                hintStyle: const TextStyle(color: Colors.white),
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _searchController.clear();
                          });
                        },
                      )
                    : const SizedBox()),
          ),
        ),
        body: AsyncValueWidget<List<CoinSearch>>(
            value: coinList,
            data: (data) {
              if (data.isEmpty) {
                return const Center(
                    child: Text(
                  'No coins found',
                  style: AppTextStyle.normal,
                ));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return SearchCard(
                    coinSearch: data[index],
                  );
                },
              );
            }));
  }
}
