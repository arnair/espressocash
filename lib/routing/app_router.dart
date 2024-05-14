import 'package:espressocash/features/coin/presentation/coin_screen.dart';
import 'package:espressocash/features/search/presentation/search_screen.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'not_found_screen.dart';

enum AppRoute { loading, seach, coin }

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/search",
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/search',
        name: AppRoute.seach.name,
        builder: (context, state) => const SearchScreen(),
        routes: const [],
      ),
      GoRoute(
        path: '/coin/:id',
        name: AppRoute.coin.name,
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return CoinScreen(
            id: id!,
          );
        },
      )
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
