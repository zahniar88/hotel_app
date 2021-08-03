import 'package:flutter/material.dart';


class SearchLocation extends StatelessWidget {
  const SearchLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 12, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Locations",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xffB7B7B7),
            ),
          ),
          Text.rich(
            TextSpan(
              text: "Bandung,",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff2A2B3D),
              ),
              children: [
                TextSpan(
                  text: " Indonesia",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Color(0xff2A2B3D),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
