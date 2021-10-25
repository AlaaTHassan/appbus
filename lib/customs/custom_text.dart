 import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String? label;
  final Color? color;
  final Color? colorr;

  final IconData? icon;
  final IconData? suficon;
  final Function? onClick;
  final Function? cha;
  final TextEditingController controller;

   const CustomText({Key? key, this.label, this.icon, this.suficon, this.onClick, this.cha,required this.controller, this.color, this.colorr}) : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  bool cc = false;

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextFormField(
        validator: ( val)
        {
          if(val!.isEmpty&&widget.label=="Email")
          {
            return "invaled email";
          }else if(val.isEmpty&&widget.label=="Password")
          {
            return "invaled password";
          }else if(val.isEmpty&&widget.label=="Name")
          {
            return "invaled Name";
          }else if(val.isEmpty&&widget.label=="Phone")
          {
            return "Empty Phone";
          }
        },

        obscureText:cc? widget.label=="Password"?false:true:widget.label=="Password"?true:false ,
        controller: widget.controller,
        style: TextStyle(color: widget.color),
        cursorColor: widget.color,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(color: widget.color),
          prefixIcon: Icon(widget.icon,color: widget.color),
          suffixIcon: InkWell(
              onTap: ()
              {
                setState(() {
                  cc=!cc;
                });
              },
              child: Icon(widget.suficon,color: widget.color)),
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
