import 'package:flutter/material.dart';
import 'package:whtsapp_vinudev/chats.dart';
import 'package:whtsapp_vinudev/lists.dart';
class updates extends StatefulWidget {
  const updates({super.key});

  @override
  State<updates> createState() => _updatesState();
}

class _updatesState extends State<updates> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: const EdgeInsets.only(left: 10.0), child: Text('Status', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
            PopupMenuButton(
                position: PopupMenuPosition.under,
                itemBuilder: (BuildContext context) => [
                      PopupMenuItem(child: Text('Status privacy', style: TextStyle(fontSize: 14))),
                    ]),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(chatList[index][0]),
                  radius: 30,
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: const EdgeInsets.only(left: 10.0), child: Text('Channels', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
            PopupMenuButton(
                position: PopupMenuPosition.under,
                icon: Icon(Icons.add),
                itemBuilder: (BuildContext context) => [
                      PopupMenuItem(child: Text('Create channel', style: TextStyle(fontSize: 14))),
                      PopupMenuItem(child: Text('Find channel', style: TextStyle(fontSize: 14))),
                    ]),
          ],
        ),
        Card(
          child: ListTile(
            subtitle: Text(
              'serve as a one-way broadcasting tool, enabling administrators to send various types of content such as text messages, photos, videos, stickers, and polls',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: const EdgeInsets.only(left: 10.0), child: Text('Find channels', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'See more',
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 10,
                    color: Colors.green,
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: channels.length,
            itemBuilder: (context, index){
                return findChannel(url: channels[index][0], heading: channels[index][1], SubTitle: channels[index][02]);
          } ,),
        )
      ],
    );
  }
}

class findChannel extends StatelessWidget {
  final String url;
  final String heading;
  final String SubTitle;
  const findChannel({super.key,required this.url, required this.heading, required this.SubTitle,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
          boxShadow: [BoxShadow(
            color: Colors.black54,
            blurRadius:10,
            offset: Offset(0.0, 5.0)


          )]
        ),
        child: Column(
          children: [
            SizedBox(height: 5,),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),
            ),
            Center(
              child: Column(
                children: [Text(heading), Text(SubTitle ,style: TextStyle(fontSize: 10,color: Colors.grey),)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
