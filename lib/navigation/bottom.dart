import 'package:flutter/material.dart';
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
        onTap: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    ));
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key, this.onTap, required this.selectedIndex})
      : super(key: key);

  final Function(int)? onTap;
  final int selectedIndex;
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

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: AppColors.secondary,
            border: Border(
                top: BorderSide(
              color: AppColors.border,
              width: 1,
            ))),
        child: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(overflow: TextOverflow.visible),
            unselectedLabelStyle:
                const TextStyle(overflow: TextOverflow.visible),
            backgroundColor: AppColors.secondary,
            currentIndex: selectedIndex,
            elevation: 0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            onTap: onTap,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.primary,
            items: _screens
                .map((e) => BottomNavigationBarItem(
                    icon:
                        // SizedBox(
                        //   child: Column(
                        //     mainAxisSize: MainAxisSize.min,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        Image.asset(
                      e.icon,
                      width: 35,
                      height: 35,
                      alignment: Alignment.centerLeft,
                    ),
                    // PrimaryText(
                    //   text: e.title,
                    //   maxLines: 3,
                    //   size: 12,
                    //   textAlign: TextAlign.center,
                    // ),
                    //     ],
                    //   ),
                    // )
                    // ,
                    label: e.title,
                    backgroundColor: AppColors.secondary))
                .toList()));
  }
}

class BottomScreen {
  final String title;
  final Widget screen;
  final String icon;

  BottomScreen({required this.title, required this.screen, required this.icon});
}
