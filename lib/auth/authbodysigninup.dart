import 'package:flutter/material.dart';

class authbodysigninup extends StatelessWidget {
  final String text;
  const authbodysigninup({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}
