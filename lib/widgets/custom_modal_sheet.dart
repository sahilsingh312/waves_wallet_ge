import 'package:flutter/material.dart';

class CustomModalSheet extends StatelessWidget {
  const CustomModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.65,
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.028,
          ),
          const Icon(Icons.person_rounded, size: 32, color: Colors.blue),
          SizedBox(
            height: screenHeight * 0.028,
          ),
          Text('You do not have tokens',
              style: Theme.of(context).textTheme.headline1),
          SizedBox(
            height: screenHeight * 0.028,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue imperdiet facilisis. Duis tristique arcu nec dui luctus hendrerit hendrerit eu lectus. Nullam vitae urna et neque gravida pharetra. Phasellus quis dictum massa. Curabitur efficitur quis ex nec faucibus.\n\n Proin porttitor eu metus ut pellentesque. Aliquam luctus metus feugiat turpis convallis, eget aliquet est consequat. ',
                style: Theme.of(context).textTheme.bodyText2),
          ),
          SizedBox(
            height: screenHeight * 0.028,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: screenHeight * 0.065,
              width: double.infinity,
              color: Colors.blue,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Create a new token',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.028,
          ),
          Text('Transaction Fee 0.02 ETH',
              style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }
}
