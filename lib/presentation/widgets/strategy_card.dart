import 'package:flutter/material.dart';
import 'package:stock_quant_app/data/models/strategy.dart';

/// 策略卡片组件
class StrategyCard extends StatelessWidget {
  final Strategy strategy;
  final VoidCallback onToggle;

  const StrategyCard({
    super.key,
    required this.strategy,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(strategy.name),
        subtitle: Text(strategy.description),
        trailing: Switch(
          value: strategy.isActive,
          onChanged: (_) => onToggle(),
        ),
      ),
    );
  }
}
