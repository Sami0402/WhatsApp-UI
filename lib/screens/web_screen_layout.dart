import 'package:flutter/material.dart';
import 'package:whtasapp_ui/colors.dart';
import 'package:whtasapp_ui/widgets/chat_list.dart';
import 'package:whtasapp_ui/widgets/contact_list.dart';
import 'package:whtasapp_ui/widgets/web_chat_bar.dart';
import 'package:whtasapp_ui/widgets/web_profile_bar.dart';
import 'package:whtasapp_ui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //WEB profile bar
                WebProfileBar(),
                //WEB Search Bar
                WebSearchBar(),
                //Contact List
                ContactList()
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              //Chat App Bar
              WebChatBar(),
              //Chat list
              Expanded(child: ChatList()),
              //Message Input box
              Container(
                width: MediaQuery.sizeOf(context).width * 0.70,
                height: 55,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: chatBarMessage,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.attach_file_outlined,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Type a message",
                            hintStyle: TextStyle(fontSize: 15),
                            contentPadding: EdgeInsets.only(left: 20),
                            fillColor: searchBarColor,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
