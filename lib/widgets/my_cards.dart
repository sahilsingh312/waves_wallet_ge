import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color iconColor;
  final double size;

  const MyCards(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      required this.iconColor,
      this.size = 28});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 115,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: size,
                color: iconColor,
              ),
              Text(text, style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
      ),
    );
  }
}
