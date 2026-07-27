import 'package:go_router/go_router.dart';
import 'package:powerapp/features/home/layout/home_maindesign.dart';
import 'package:powerapp/features/meters/layout/meters_maindesign.dart';
import 'package:powerapp/features/transactions/layout/transaction_maindesign.dart';
import 'package:powerapp/features/wallets/layout/wallet_maindesign.dart';
import 'package:powerapp/layout/maindesign.dart';


  final GoRouter approute = GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            Maindesign(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => const HomeMaindesign(),
              ),
            ],
          ),

          // router meters
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/meters',
                builder: (context, state) => const MetersMaindesign(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/transactions',
                builder: (context, state) => const TransactionMaindesign(),
                
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/wallets',
                builder: (context, state) => const WalletMaindesign(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

