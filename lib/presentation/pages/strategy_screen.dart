import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/presentation/controllers/strategy_controller.dart';
import 'package:stock_quant_app/presentation/widgets/strategy_card.dart';
import 'package:stock_quant_app/presentation/widgets/strategy_form.dart';

/// 策略管理页面
class StrategyScreen extends ConsumerWidget {
  const StrategyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strategiesAsync = ref.watch(strategyListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('策略管理'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showAddStrategyDialog(context, ref),
          ),
        ],
      ),
      body: strategiesAsync.when(
        data: (strategies) => strategies.isEmpty
            ? const Center(child: Text('暂无策略'))
            : ListView.builder(
                itemCount: strategies.length,
                itemBuilder: (context, index) {
                  final strategy = strategies[index];
                  return StrategyCard(
                    strategy: strategy,
                    onToggle: () => ref
                        .read(strategyListProvider.notifier)
                        .toggleStrategy(strategy.id),
                  );
                },
              ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('加载失败: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () =>
                    ref.read(strategyListProvider.notifier).loadStrategies(),
                child: const Text('重试'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddStrategyDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => StrategyForm(
        onSubmit: (strategy) {
          ref.read(strategyListProvider.notifier).createStrategy(strategy);
          Navigator.pop(context);
        },
      ),
    );
  }
}
