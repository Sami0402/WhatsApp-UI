import 'package:flutter/material.dart';
import 'package:whtasapp_ui/colors.dart';
import 'package:whtasapp_ui/info.dart';
import 'package:whtasapp_ui/screens/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        child: ListView.builder(
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MobileChatScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        title: Text(
                          info[index]['name'].toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            info[index]['message'].toString(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        trailing: Text(
                          info[index]['time'].toString(),
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            info[index]['profilePic'].toString(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    indent: 85,
                  )
                ],
              );
            }),
      ),
    );
  }
}
