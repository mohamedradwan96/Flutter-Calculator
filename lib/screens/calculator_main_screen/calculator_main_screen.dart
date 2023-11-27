import 'package:calculator/providers/cal_provider.dart';
import 'package:calculator/shared/style/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widget/TextFields/textField.dart';
import '../../widget/bottoms/equelbottom.dart';
import '../../widget/bottoms/mathBottom.dart';

class CalculatorMainScreen extends StatefulWidget {
  static const String routeName = "CalculatorMainScreen";

  @override
  State<CalculatorMainScreen> createState() => _CalculatorMainScreenState();
}

class _CalculatorMainScreenState extends State<CalculatorMainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<CalculatorProvider>(
        builder: (context, provider, _) {
          return Scaffold(
            backgroundColor: heading,
            appBar: AppBar(
              backgroundColor: text,
              title: const Center(child: Text("Calculator App")),
            ),
            body: Column(
              children: [
                CustomTextField(textController: provider.controller),
                const Spacer(),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .65,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25)),
                      color: text),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MathBottom(
                              mathBottom: "C", color: Colors.orangeAccent),
                          MathBottom(
                              mathBottom: "%", color: Colors.orangeAccent),
                          MathBottom(
                              mathBottom: "AC", color: Colors.orangeAccent),
                          MathBottom(
                              mathBottom: "X", color: Colors.orangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MathBottom(mathBottom: "7", color: heading),
                          MathBottom(mathBottom: "8", color: heading),
                          MathBottom(mathBottom: "9", color: heading),
                          MathBottom(
                              mathBottom: "/", color: Colors.orangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MathBottom(mathBottom: "4", color: heading),
                          MathBottom(mathBottom: "5", color: heading),
                          MathBottom(mathBottom: "6", color: heading),
                          MathBottom(
                              mathBottom: "-", color: Colors.orangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MathBottom(mathBottom: "1", color: heading),
                          MathBottom(mathBottom: "2", color: heading),
                          MathBottom(mathBottom: "3", color: heading),
                          MathBottom(
                              mathBottom: "+", color: Colors.orangeAccent),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MathBottom(mathBottom: "0", color: heading),
                          MathBottom(mathBottom: ".", color: heading),
                          const EqualBottom()
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
