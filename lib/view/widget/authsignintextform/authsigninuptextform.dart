import 'package:flutter/material.dart';

class Authsigninup extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isnumber;
  final bool? obscuretext;
  final void Function()? onTapIcon;
  const Authsigninup({
    super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    this.mycontroller,
    required this.valid,
    required this.isnumber,
    this.obscuretext,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isnumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: valid,
      controller: mycontroller,
      obscureText: obscuretext == null || obscuretext == false ? false : true,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 94, 93, 93),
              fontWeight: FontWeight.w700),
          label: Container(
            child: Text(labeltext),
            margin: const EdgeInsets.symmetric(horizontal: 9),
          ),
          suffixIcon: InkWell(
            child: Icon(iconData),
            onTap: onTapIcon,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
