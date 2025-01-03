import 'package:flutter/material.dart';
import 'package:stock_quant_app/data/models/strategy.dart';

/// 策略表单组件
class StrategyForm extends StatefulWidget {
  final void Function(Strategy) onSubmit;

  const StrategyForm({
    super.key,
    required this.onSubmit,
  });

  @override
  State<StrategyForm> createState() => _StrategyFormState();
}

class _StrategyFormState extends State<StrategyForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      widget.onSubmit(
        Strategy(
          id: DateTime.now().toString(), // 临时ID，实际应由后端生成
          name: _nameController.text,
          description: _descriptionController.text,
          isActive: false,
          parameters: const {},
          createdAt: DateTime.now(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('新建策略'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: '策略名称'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入策略名称';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: '策略描述'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入策略描述';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('取消'),
        ),
        ElevatedButton(
          onPressed: _handleSubmit,
          child: const Text('确定'),
        ),
      ],
    );
  }
}
