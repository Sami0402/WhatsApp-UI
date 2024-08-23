import 'package:flutter/material.dart';
import 'package:whtasapp_ui/colors.dart';
import 'package:whtasapp_ui/info.dart';

class WebChatBar extends StatelessWidget {
  const WebChatBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.070,
      width: MediaQuery.sizeOf(context).width * 0.70,
      decoration: BoxDecoration(color: webAppBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      NetworkImage(info[0]["profilePic"].toString()),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    info[0]["name"].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
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
