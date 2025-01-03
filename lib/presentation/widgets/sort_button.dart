import 'package:flutter/material.dart';

/// Button for sorting stock lists
class SortButton extends StatelessWidget {
  /// Button title
  final String title;

  /// Whether this sort type is active
  final bool active;

  /// Whether sorting is ascending
  final bool ascending;

  /// Callback when button is pressed
  final VoidCallback onPressed;

  /// Creates a sort button
  const SortButton({
    super.key,
    required this.title,
    required this.active,
    required this.ascending,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        active
            ? ascending
                ? Icons.arrow_upward
                : Icons.arrow_downward
            : Icons.unfold_more,
        size: 16,
      ),
      label: Text(
        title,
        style: theme.textTheme.labelMedium?.copyWith(
          color: active ? theme.primaryColor : null,
        ),
      ),
    );
  }
}
