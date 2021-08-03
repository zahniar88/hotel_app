import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ContentNewHotel extends StatelessWidget {
  const ContentNewHotel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94,
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffffffff),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/image1.png"),
          ),
          SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Skytown Hotel",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2A2B3D),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Sibolga, Medan",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xffB7B7B7),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Text(
                "4.9",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffB7B7B7),
                ),
              ),
              SizedBox(width: 2),
              Icon(
                FontAwesomeIcons.solidStar,
                size: 12,
                color: Color(0xffFFB25A),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
