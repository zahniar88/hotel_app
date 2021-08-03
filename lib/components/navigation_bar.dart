import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  final int selectedIndex;
  final ValueChanged onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xffffffff),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff4E82EA),
      unselectedItemColor: Color(0xffD8D8D8),
      currentIndex: selectedIndex,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.home,
            size: 18,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.search,
            size: 18,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.thLarge,
            size: 18,
          ),
          label: "Order",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.user,
            size: 18,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
