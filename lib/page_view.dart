import 'package:flutter/material.dart';
import 'package:hotel_app/screens/home_screen.dart';
import 'package:hotel_app/screens/search_screen.dart';
import 'components/home_appbar.dart';
import 'components/navigation_bar.dart';

class PageViewController extends StatefulWidget {
  const PageViewController({Key? key}) : super(key: key);

  @override
  _PageViewControllerState createState() => _PageViewControllerState();
}

class _PageViewControllerState extends State<PageViewController> {
  int selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      appBar: (selectedIndex == 0) ? HomeAppBar() : null,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = (index <= pages.length - 1) ? index : pages.length - 1;
          });
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
      ),
    );
  }
}
