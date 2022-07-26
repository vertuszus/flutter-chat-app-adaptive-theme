import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MessagesBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryColor,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Esther Howard',
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              Text(
                'Active 3m ago',
                style: TextStyle(
                    fontSize: 12
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_phone)
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam)
        ),
        SizedBox(width: kDefaultPadding * 0.5),
      ],
    );
  }

}
