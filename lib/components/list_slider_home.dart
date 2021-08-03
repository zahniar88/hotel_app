import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_app/models/slide.dart';


class ListSlider extends StatelessWidget {
  const ListSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        itemCount: Slide.slides.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 280,
            height: 350,
            margin: EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffffffff),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(Slide.slides[index].image),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Slide.slides[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff2A2B3D),
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.mapMarkerAlt,
                                size: 16,
                                color: Color(0xffF2735B),
                              ),
                              SizedBox(width: 2),
                              Text(
                                Slide.slides[index].location,
                                style: TextStyle(
                                  color: Color(0xffB7B7B7),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            Slide.slides[index].rating.toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffB7B7B7),
                            ),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            FontAwesomeIcons.solidStar,
                            size: 12,
                            color: Color(0xffF2735B),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 18 * 2,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price Start from:",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 12,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: "IDR ${Slide.slides[index].price}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4E82EA),
                          ),
                          children: [
                            TextSpan(
                              text: "/night",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xffB7B7B7),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
