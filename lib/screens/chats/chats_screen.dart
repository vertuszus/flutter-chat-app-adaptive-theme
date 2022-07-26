import 'package:chat/constants.dart';
import 'package:chat/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ChatsBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
            Icons.person_add_alt_1,
            color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        selectedFontSize: 13,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/user_2.png')
          ),
              label: 'Profile'
          ),
        ]);
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryColor,
      title: Text('Chats'),
      actions: [
        IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.search)
        )
      ],
    );
  }
}
