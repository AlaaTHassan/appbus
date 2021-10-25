import 'package:appbus/constants/mycolor.dart';
import 'package:flutter/material.dart';
class Custompotton extends StatefulWidget {
  final String name;
  final GestureTapCallback onPressed;
  final double height;
  final double width;


  const Custompotton({Key? key, required this.name,  required this.onPressed, required this.height, required this.width}) : super(key: key);

  @override
  State<Custompotton> createState() => _CustompottonState();
}

class _CustompottonState extends State<Custompotton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Text(widget.name,style: TextStyle(color: colorw,fontSize: 18,fontWeight: FontWeight.bold),),

      ),
    );
  }
}
