import 'package:flutter/material.dart';
import 'package:whtasapp_ui/colors.dart';
import 'package:whtasapp_ui/info.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.070,
      width: MediaQuery.sizeOf(context).width * 0.30,
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
            color: dividerColor,
          )),
          color: webAppBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(info[4]["profilePic"].toString()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment,
                      color: Colors.grey,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_sharp,
                      color: Colors.grey,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
