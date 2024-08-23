import 'package:flutter/material.dart';
import 'package:whtasapp_ui/colors.dart';
import 'package:whtasapp_ui/info.dart';
import 'package:whtasapp_ui/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]["name"].toString()),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: Column(
        children: [
          //CHATS
          Expanded(
            child: ChatList(),
          ),
          //MESSAGE INPUT
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 55,
            decoration: BoxDecoration(color: chatBarMessage),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type a message",
                          hintStyle: TextStyle(fontSize: 15),
                          contentPadding: EdgeInsets.only(
                            left: 20,
                          ),
                          fillColor: searchBarColor,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.emoji_emotions_outlined),
                          ),
                          suffixIcon: ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.attach_file),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt_rounded),
                                ),
                              ],
                            ),
                          ))),
                )

                // Expanded(
                //   child: TextField(
                //     decoration: InputDecoration(
                //         hintText: "Type a message",
                //         hintStyle: TextStyle(fontSize: 15),
                //         contentPadding: EdgeInsets.only(
                //           left: 20,
                //         ),
                //         fillColor: searchBarColor,
                //         filled: true,
                //         border: OutlineInputBorder(
                //             borderSide:
                //                 BorderSide(width: 0, style: BorderStyle.none),
                //             borderRadius: BorderRadius.circular(20)),
                //         prefixIcon: IconButton(
                //           onPressed: () {},
                //           icon: Icon(Icons.emoji_emotions_outlined),
                //         ),
                //         suffixIcon: Row(
                //           mainAxisAlignment: MainAxisAlignment.end,
                //           children: [
                //             Padding(
                //               padding:
                //                   const EdgeInsets.symmetric(horizontal: 1),
                //               child: IconButton(
                //                 onPressed: () {},
                //                 icon: Icon(Icons.camera_alt),
                //               ),
                //             ),
                //             Padding(
                //               padding:
                //                   const EdgeInsets.symmetric(horizontal: 1),
                //               child: IconButton(
                //                 onPressed: () {},
                //                 icon: Icon(Icons.attach_file),
                //               ),
                //             ),
                //           ],
                //         )),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
