import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Find your Favorite Hotels",
          hintStyle: TextStyle(
            color: Color(0xffB7B7B7),
            fontSize: 14,
          ),
          prefixIcon: Icon(
            FontAwesomeIcons.search,
            size: 16,
            color: Color(0xffB7B7B7),
          ),
        ),
      ),
    );
  }
}
