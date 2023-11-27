import 'package:calculator/providers/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MathBottom extends StatefulWidget {
  String mathBottom;
  final Color color;

  MathBottom({required this.mathBottom, required this.color});

  @override
  State<MathBottom> createState() => _MathBottomState();
}

class _MathBottomState extends State<MathBottom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false)
            .setValue(widget.mathBottom);
      },
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: CircleAvatar(
          backgroundColor: widget.color,
          radius: 36,
          child: Text(
            widget.mathBottom,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
