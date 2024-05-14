import 'package:espressocash/constants/custom_theme.dart';
import 'package:espressocash/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: ExpressoCash()));
}

class ExpressoCash extends ConsumerWidget {
  const ExpressoCash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      restorationScopeId: 'app',
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: customTheme,
    );
  }
}
