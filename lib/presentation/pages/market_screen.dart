import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/presentation/widgets/market_tabs/hot_stocks_tab.dart';
import 'package:stock_quant_app/presentation/widgets/market_tabs/market_overview_tab.dart';
import 'package:stock_quant_app/presentation/widgets/market_tabs/my_watchlist_tab.dart';
import 'package:stock_quant_app/presentation/pages/trading_screen.dart';

/// Market screen with tabs
class MarketScreen extends ConsumerStatefulWidget {
  /// Creates a new market screen
  const MarketScreen({super.key});

  @override
  ConsumerState<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends ConsumerState<MarketScreen> {
  int _currentIndex = 0;

  final _tabs = const [
    MarketOverviewTab(),
    HotStocksTab(),
    MyWatchlistTab(),
    TradingScreen(), // Add trading screen as a tab
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed, // Important for 4+ items
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            activeIcon: Icon(Icons.analytics),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department_outlined),
            activeIcon: Icon(Icons.local_fire_department),
            label: 'Hot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline),
            activeIcon: Icon(Icons.star),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange_outlined),
            activeIcon: Icon(Icons.currency_exchange),
            label: 'Trade',
          ),
        ],
      ),
    );
  }
}
