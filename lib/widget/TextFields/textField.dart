import 'package:flutter/material.dart';

import '../../shared/style/colors/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textController;
  CustomTextField({required this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        maxLines: 1,
        controller: textController,
        readOnly: true,
        autofocus: true,
        showCursor: true,
        decoration: const InputDecoration(
            fillColor: text, filled: true, border: InputBorder.none),
        style: const TextStyle(fontSize: 30, color: Colors.orangeAccent),
      ),
    );
  }
}
