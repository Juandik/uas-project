// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:uts_project/models/ChatMessage.dart';
import 'package:uts_project/screens/constants.dart';

import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Expanded(child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
         child: ListView.builder(
           itemCount: demeChatMessages.length,
           itemBuilder: (context, index) =>
               Message(message: demeChatMessages [index]),
           ),
       ),
       ),
        ChatInputField(),
      ],
    );
  }
}






