import 'package:flutter/material.dart';

class community extends StatelessWidget {
  const community({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
              'https://static.vecteezy.com/system/resources/previews/004/154/417/non_2x/teamwork-or-team-building-office-business-meeting-conference-and-brainstorming-annual-report-and-statistics-graphics-discussion-and-planning-in-flat-style-free-vector.jpg'),
          Text(
            'Stay connected with a community',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Communities on WhatsApp bring members together in topic-based groups. Anyone can create a WhatsApp community.',
              style: TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('See example Communities'), Icon(Icons.arrow_forward)],
            ),
            style: TextButton.styleFrom(
                primary: Colors.green
            ),
          ),
          MaterialButton(onPressed: (){},
            child: Container(
              width: 200,
              height: 30,
              margin: EdgeInsets.only(top: 14),
              child: Center(child: Text('Start your community',style: TextStyle(color: Colors.black,fontSize: 12),)),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20)
              ),
            ) ,

          )
        ],
      ),
    );
  }
}