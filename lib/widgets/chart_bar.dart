import 'package:flutter/material.dart';

class ChatBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  const ChatBar({
    super.key,
    required this.label,
    required this.spendingAmount,
    required this.spendingPctOfTotal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('\$${spendingAmount.toStringAsFixed(0)}'),
        const SizedBox(
          height: 4,
        ),
        Container(),
      ],
    );
  }
}
