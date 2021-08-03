import 'package:flutter/material.dart';


class SearchTitle extends StatelessWidget {
  const SearchTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff2A2B3D),
        ),
      ),
    );
  }
}
