import 'package:flutter/material.dart';
import 'package:waves_wallet/widgets/custom_modal_sheet.dart';
import 'package:waves_wallet/widgets/my_cards.dart';
import 'dart:math' as math;

import 'package:waves_wallet/widgets/my_tokens.dart';
import 'package:waves_wallet/widgets/type_of_tokens.dart';

class WavesWalletScreen extends StatefulWidget {
  const WavesWalletScreen({Key? key}) : super(key: key);

  @override
  State<WavesWalletScreen> createState() => _WavesWalletScreenState();
}

class _WavesWalletScreenState extends State<WavesWalletScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.notifications_outlined,
                ),
                CircleAvatar(
                  radius: screenWidth * 0.03,
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child:
                  Text('Wallet', style: Theme.of(context).textTheme.bodyText2),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Mobile Team',
                  style: Theme.of(context).textTheme.headline1),
            ),
            SizedBox(
              height: screenHeight * 0.025,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  MyCards(
                      color: Colors.blue,
                      text: 'Your address',
                      icon: Icons.qr_code,
                      iconColor: Colors.white),
                  MyCards(
                      color: Colors.white,
                      text: 'Aliases',
                      icon: Icons.person,
                      iconColor: Colors.black),
                  MyCards(
                      color: Colors.white,
                      text: 'Balance',
                      icon: Icons.toggle_on,
                      iconColor: Colors.blue,
                      size: 40),
                  MyCards(
                      color: Colors.white,
                      text: 'Reach Out',
                      icon: Icons.translate,
                      iconColor: Colors.black),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.025,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                  width: 190,
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blue,
                    labelStyle: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 14),
                    unselectedLabelStyle: Theme.of(context).textTheme.bodyText2,
                    indicatorPadding: const EdgeInsets.only(
                        left: 2, right: 56, top: 0, bottom: 0),
                    labelPadding: const EdgeInsets.only(right: 32),
                    padding: const EdgeInsets.only(right: 20),
                    indicatorWeight: 2,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: 'Tokens',
                      ),
                      Tab(text: 'Leasing'),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                SizedBox(
                  height: screenHeight * 0.5,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.75,
                                height: 44,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.search),
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(0.2),
                                    hintStyle:
                                        Theme.of(context).textTheme.bodyText2,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Colors.grey.withOpacity(0.2))),
                                    hintText: 'Search',
                                    contentPadding: EdgeInsets.zero,
                                    isDense: true,
                                  ),
                                  scrollPadding: EdgeInsets.zero,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.05,
                              ),
                              const Icon(
                                Icons.swap_vert,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          MyTokens(
                            title: 'Waves',
                            amount: 5.0054,
                            isHeart: true,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 12,
                                ),
                                Transform.rotate(
                                  angle: -math.pi / 4,
                                  child: Container(
                                    color: Colors.blue,
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.check_outlined,
                                    size: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          MyTokens(
                            title: 'Pigeon/ My token',
                            amount: 1444.04556321,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: screenWidth * 0.065,
                                  backgroundColor: const Color(0xff69727B),
                                  child: const Text(
                                    'P',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 2,
                                  child: CircleAvatar(
                                    radius: screenWidth * 0.028,
                                    backgroundColor: Colors.white,
                                    child: const Icon(
                                      Icons.switch_left,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          MyTokens(
                            title: 'US Dollar',
                            amount: 199.24,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: screenWidth * 0.065,
                                  backgroundColor: Colors.green,
                                  child: const Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 32),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 2,
                                  child: CircleAvatar(
                                    radius: screenWidth * 0.028,
                                    backgroundColor: Colors.white,
                                    child: const Icon(
                                      Icons.check_outlined,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenWidth * 0.05,
                          ),
                          const TypeOfTokens(
                            text: 'Hidden Tokens (2)',
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                          ),
                          const TypeOfTokens(
                            text: 'Suspicious Tokens (15)',
                          )
                        ],
                      ),
                      Container()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_balance_wallet,
                  color: Colors.black,
                )),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.swap_horiz,
                  color: Colors.grey,
                )),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return const CustomModalSheet();
                    },
                  );
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.blue,
                )),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        elevation: 16,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            const SizedBox(height: 20),
                            Center(
                                child: Text('This is a pop up',
                                    style:
                                        Theme.of(context).textTheme.bodyText2)),
                            const SizedBox(height: 20),
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(
                  Icons.list,
                  color: Colors.grey,
                )),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.grey,
                )),
            label: ' ',
          ),
        ],
      ),
    );
  }
}
