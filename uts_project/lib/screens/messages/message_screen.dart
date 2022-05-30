import 'package:flutter/material.dart';

import '../constants.dart';
import 'components/body.dart';

class MessagesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
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
            backgroundImage: AssetImage("images/person_icon.png"),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Juan",
                 style: TextStyle(fontSize: 16),
             ),
              Text(
                "Active 3m ago",
                 style: TextStyle(fontSize: 12),
              )
            ]
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_phone),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
