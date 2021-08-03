import 'package:flutter/material.dart';
import 'package:hotel_app/components/list_nearby.dart';
import 'package:hotel_app/components/search_field.dart';
import 'package:hotel_app/components/search_location.dart';
import 'package:hotel_app/components/search_title.dart';
import 'package:hotel_app/models/search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          SearchLocation(),
          SearchField(),
          Divider(
            height: 48,
            color: Color(0xffB7B7B7),
          ),
          SearchTitle(title: "Lastest Search"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 24),
            child: Wrap(
              children: Search.keywords.map((search) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
                  margin: EdgeInsets.only(right: 12, bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xffffffff),
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Text(search.keyword),
                );
              }).toList(),
            ),
          ),
          SearchTitle(title: "Nearby You"),
          ListNearBy(),
          SizedBox(height: 12),
          Center(
            child: InkWell(
              onTap: () {},
              child: Text(
                "Load More",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4E82EA),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
