import 'package:flutter/material.dart';
import 'package:whtasapp_ui/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.sizeOf(context).height * 0.06,
      width: MediaQuery.sizeOf(context).width * 0.35,
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: dividerColor),
          ),
          color: appBarColor),
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          contentPadding: EdgeInsets.all(12),
          hintText: 'Search or Start new chat',
          hintStyle: TextStyle(fontSize: 14),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
