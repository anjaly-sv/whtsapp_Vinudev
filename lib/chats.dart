import 'package:flutter/material.dart';

List chatList = [
  ['https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg','Zayan','Hi Dev','12:30PM'],
  ['https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg','Don','Good Morning','12:30PM'],
  ['https://shotkit.com/wp-content/uploads/bb-plugin/cache/cool-profile-pic-matheus-ferrero-landscape-6cbeea07ce870fc53bedd94909941a4b-zybravgx2q47.jpeg','Ann','hi','12:30PM'],
];



class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: chatList.length,
          itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(chatList[index][0]),
              ),
              title: Text(chatList[index][1],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              subtitle: Text(chatList[index][2],style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500)),
              trailing: Container(
                child: Text(chatList[index][3],style: TextStyle(fontSize: 8,fontWeight: FontWeight.w600)),
              ),
            ),
          );
        }
        ),

      ],

    );
  }
}
