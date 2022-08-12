import 'package:flutter/material.dart';

class TypeOfTokens extends StatelessWidget {
  final String text;

  const TypeOfTokens({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyText2),
        const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.grey,
          size: 32,
        ),
      ],
    );
  }
}
