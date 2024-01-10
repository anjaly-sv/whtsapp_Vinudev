import 'package:flutter/material.dart';

List callList = [
  ['https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg','Zayan','Today ,9:44 am',Icons.call],
  ['https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg','Don','5 December ,10:44 pm',Icons.video_call],

];


class calls extends StatefulWidget {
  const calls({super.key});

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Container(
         child: ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.green,
           ),
           title: Text('Create call link'),
           subtitle: Text('Share a link for your WhatsApp call'),
         ),
       ),

        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: callList.length,
            itemBuilder: (context, index) {
              return Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(callList[index][0]),
                  ),
                  title: Text(callList[index][1],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                  subtitle: Row(
                    children: [
                      Icon(Icons.arrow_right_alt,color: Colors.red,size: 15,),
                      Text(callList[index][2],style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500)),
                    ],
                  ),
                  trailing: Container(
                    child: Icon(callList[index][3],color: Colors.green,),
                  ),
                ),
              );
            }
        ),

      ],

    );
  }
}
