import 'package:e_commerace_project/core/constant/color.dart';
import 'package:flutter/material.dart';

class textsigninup extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function()? onTap;
  const textsigninup(
      {super.key, required this.text1, required this.text2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: TextStyle(
                color: AppColor.primarycolor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
