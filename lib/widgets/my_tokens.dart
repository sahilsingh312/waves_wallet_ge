import 'package:flutter/material.dart';

class MyTokens extends StatelessWidget {
  final Widget child;
  final String title;
  final double amount;
  final bool isHeart;

  const MyTokens({
    super.key,
    required this.child,
    required this.title,
    required this.amount,
    this.isHeart = false,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      child: Card(
        elevation: 2,
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            child,
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 0,
                    ),
                    Text(title, style: Theme.of(context).textTheme.bodyText2),
                    const SizedBox(
                      width: 8,
                    ),
                    isHeart
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.blue,
                            size: 12,
                          )
                        : const SizedBox(),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text('5.0054',
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.left),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
