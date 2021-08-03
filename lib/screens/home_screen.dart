import 'package:flutter/material.dart';
import 'package:hotel_app/components/content_new_hotel.dart';
import 'package:hotel_app/components/list_slider_home.dart';
import 'package:hotel_app/components/section_balanace.dart';
import 'package:hotel_app/components/section_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SectionBalance(),
        SectionTitle(title: "Recommended Hotels"),
        ListSlider(),
        SizedBox(height: 24),
        SectionTitle(title: "New Hotels Experience"),
        ContentNewHotel(),
      ],
    );
  }
}
