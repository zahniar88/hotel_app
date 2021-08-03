import 'package:flutter/material.dart';
import 'package:hotel_app/models/nearby.dart';


class ListNearBy extends StatelessWidget {
  const ListNearBy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Nearby.nearby.map((nearby) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 12),
          width: double.infinity,
          height: 94,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffffffff),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(nearby.image),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nearby.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2A2B3D),
                    ),
                  ),
                  Text(
                    nearby.location,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffB7B7B7),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                "${nearby.distance}km",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xffF2735B),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
