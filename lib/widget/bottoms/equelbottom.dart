import 'package:calculator/providers/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EqualBottom extends StatefulWidget {
  const EqualBottom({super.key});

  @override
  State<EqualBottom> createState() => _EqualBottomState();
}

class _EqualBottomState extends State<EqualBottom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue("=");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          width: MediaQuery.of(context).size.width / 2.6,
          height: MediaQuery.of(context).size.height / 15,
          child: const Center(
            child: Text(
              "=",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
