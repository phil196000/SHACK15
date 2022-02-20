import 'package:flutter/material.dart';
import 'package:shack15/customised_widgets/text/primary_text.dart';
import '../screens/community/community.dart';
import '../screens/events/events.dart';
import '../screens/food_drink_tokens/food_drink_tokens.dart';
import '../screens/news/news.dart';
import '../screens/rooms/rooms.dart';
import '../theme/colors.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  static final List<BottomScreen> _screens = [
    BottomScreen(
        title: 'NEWS',
        screen: const News(),
        icon: "assets/bottom_nav/news.png"),
    BottomScreen(
        title: "EVENTS",
        screen: const Events(),
        icon: "assets/bottom_nav/events.png"),
    BottomScreen(
        title: 'FOOD & DRINK & TOKENS',
        screen: const FoodDrinkTokens(),
        icon: "assets/bottom_nav/food_drink_tokens.png"),
    BottomScreen(
        title: 'ROOMS',
        screen: const Rooms(),
        icon: "assets/bottom_nav/rooms.png"),
    BottomScreen(
        title: 'COMMUNITY',
        screen: const Community(),
        icon: "assets/bottom_nav/community.png")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _screens.elementAt(_selectedIndex).screen,
      bottomNavigationBar: BottomNavigation(
        screens: _screens,
        onTap: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    ));
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {Key? key,
      this.onTap,
      required this.selectedIndex,
      required this.screens})
      : super(key: key);

  final Function(int)? onTap;
  final int selectedIndex;
  final List<BottomScreen> screens;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: AppColors.secondary,
            border: Border(
                top: BorderSide(
              color: AppColors.border,
              width: 1,
            ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: screens
              .map((e) => ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width /
                            (screens.length - 1)),
                    child: InkWell(
                      onTap: () => onTap!(screens.indexOf(e)),
                      child: Ink(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              e.icon,
                              width: 25,
                              height: 25,
                            ),
                            PrimaryText(
                              text: e.title,
                              textAlign: TextAlign.center,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ));
  }
}

class BottomScreen {
  final String title;
  final Widget screen;
  final String icon;

  BottomScreen({required this.title, required this.screen, required this.icon});
}
