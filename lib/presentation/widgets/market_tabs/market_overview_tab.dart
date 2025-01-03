import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/domain/enums/sort_type.dart';
import 'package:stock_quant_app/domain/providers/market_provider.dart';
import '../stock_list_item.dart';
import '../sort_button.dart';

/// Tab showing overall market overview
class MarketOverviewTab extends ConsumerStatefulWidget {
  const MarketOverviewTab({super.key});

  @override
  ConsumerState<MarketOverviewTab> createState() => _MarketOverviewTabState();
}

class _MarketOverviewTabState extends ConsumerState<MarketOverviewTab> {
  SortType _sortType = SortType.none;
  bool _ascending = true;

  @override
  Widget build(BuildContext context) {
    final stocks = ref.watch(marketOverviewProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SortButton(
                title: 'Change %',
                active: _sortType == SortType.priceChange,
                ascending: _ascending,
                onPressed: () => _updateSort(SortType.priceChange),
              ),
              const SizedBox(width: 8),
              SortButton(
                title: 'YTD %',
                active: _sortType == SortType.ytdChange,
                ascending: _ascending,
                onPressed: () => _updateSort(SortType.ytdChange),
              ),
            ],
          ),
        ),
        Expanded(
          child: stocks.when(
            data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => StockListItem(
                stock: data[index],
                onTap: () => _onStockTap(data[index]),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        ),
      ],
    );
  }

  void _updateSort(SortType type) {
    setState(() {
      if (_sortType == type) {
        _ascending = !_ascending;
      } else {
        _sortType = type;
        _ascending = true;
      }
    });
    ref.read(marketSortProvider.notifier).state = (_sortType, _ascending);
  }

  void _onStockTap(StockEntity stock) {
    // TODO: Navigate to stock detail page
  }
}
