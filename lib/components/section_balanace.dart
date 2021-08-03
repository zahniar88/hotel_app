import 'package:flutter/material.dart';


class SectionBalance extends StatelessWidget {
  const SectionBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          color: Color(0xff5589F0),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffffffff),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Balance",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffB7B7B7),
                      ),
                    ),
                    Text(
                      "IDR 9.200.301",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4E82EA),
                      ),
                    )
                  ],
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 24,
                  height: 24,
                  color: Color(0xffE4EDFF),
                  padding: EdgeInsets.all(4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  elevation: 0,
                  child: Icon(
                    Icons.add,
                    size: 18,
                    color: Color(0xff5589F0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
