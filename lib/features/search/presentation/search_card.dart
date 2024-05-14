import 'package:espressocash/constants/palette.dart';
import 'package:espressocash/constants/textstyles.dart';
import 'package:espressocash/features/search/domain/coin_search_model.dart';
import 'package:espressocash/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchCard extends StatelessWidget {
  final CoinSearch coinSearch;

  const SearchCard({super.key, required this.coinSearch});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        AppRoute.coin.name,
        pathParameters: {'id': coinSearch.id},
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            color: Palette.yellow,
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        child: Center(
          child: Text(
            coinSearch.name,
            style: AppTextStyle.normal,
          ),
        ),
      ),
    );
  }
}
