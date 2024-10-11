import 'package:e_commerace_project/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class buttonauthsigninup extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const buttonauthsigninup({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        padding: EdgeInsets.all(13),
        onPressed: onPressed,
        child: Text(text),
        color: AppColor.primarycolor,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
