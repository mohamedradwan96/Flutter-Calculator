import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final controller = TextEditingController();

  setValue(String value) {
    String number = controller.text;

    switch (value) {
      case "C":
        controller.clear();
        break;
      case "AC":
        controller.text = number.substring(0, number.length - 1);
        break;
      case "X":
        controller.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        controller.text += value;
    }
    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));
  }

  compute() {
    String text = controller.text;
    controller.text = text.interpret().toString();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}
