import 'package:flutter/material.dart';

class StarDisplay extends StatelessWidget {
  final int value;

  const StarDisplay({super.key, required this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          size: 18,
          color: const Color(0xFFFCA919),
          index < value ? Icons.star : null,
        );
      }),
    );
  }
}
