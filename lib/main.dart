import 'package:flutter/material.dart';
import 'package:whtsapp_vinudev/calls.dart';
import 'package:whtsapp_vinudev/chats.dart';
import 'package:whtsapp_vinudev/community.dart';
import 'package:whtsapp_vinudev/updates.dart';

List floatingIcons =[
Icon(Icons.add),Icon(Icons.message),Icon(Icons.camera_alt_rounded),Icon(Icons.call)
];

void main() {
  runApp(MaterialApp(
    home: whtsapp(),
    debugShowCheckedModeBanner: false,
  ));
}


class whtsapp extends StatefulWidget {
  const whtsapp({super.key});


  @override
  State<whtsapp> createState() => _whtsappState();
}

class _whtsappState extends State<whtsapp> with SingleTickerProviderStateMixin{

 late TabController _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'WhatsApp',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.photo_camera)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
              position: PopupMenuPosition.under,
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                        child: Text(
                      'New Group',
                      style: TextStyle(fontSize: 14),
                    )),
                    PopupMenuItem(child: Text('New broadcast', style: TextStyle(fontSize: 14))),
                    PopupMenuItem(child: Text('Linked devices', style: TextStyle(fontSize: 14))),
                    PopupMenuItem(child: Text('Starred message', style: TextStyle(fontSize: 14))),
                    PopupMenuItem(child: Text('Payment', style: TextStyle(fontSize: 14))),
                    PopupMenuItem(child: Text('Settings', style: TextStyle(fontSize: 14))),
                  ])
        ],
        bottom: TabBar(

          controller: _controller,
            indicatorColor: Colors.white,
            tabs: <Widget>[
          Tab(
            icon: Icon(Icons.group),
          ),
          Tab(
            child: Text(
              'Chats',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Tab(
            child: Text(
              'Updates',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Tab(
            child: Text(
              'Calls',
              style: TextStyle(fontSize: 13),
            ),
          ),
        ]),
      ),
      body: TabBarView(
          controller: _controller,
          children: <Widget>[
        community(),
        chats(),
        updates(),
        calls()
          ]
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){},
        child:
         floatingIcons[_selectedIndex],
      ),

    );
  }
}


