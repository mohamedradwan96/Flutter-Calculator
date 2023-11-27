import 'package:calculator/providers/cal_provider.dart';
import 'package:calculator/screens/calculator_main_screen/calculator_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'simple flutter calculator ',
        initialRoute: CalculatorMainScreen.routeName,
        routes: {
          CalculatorMainScreen.routeName: (context) => CalculatorMainScreen(),
        },
      ),
    );
  }
}
