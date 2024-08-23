import 'package:flutter/material.dart';
import 'package:whtasapp_ui/info.dart';
import 'package:whtasapp_ui/widgets/my_message_card.dart';
import 'package:whtasapp_ui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            if (messages[index]["isMe"] == true) {
              return MyMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString(),
              );
            } else {
              return SenderMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString(),
              );
            }
          }),
    );
  }
}
