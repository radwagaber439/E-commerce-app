import 'package:e_commerace_project/core/constant/imageasset.dart';
import 'package:flutter/widgets.dart';

class logoauth extends StatelessWidget {
  const logoauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.logo,
      height: 180,
    );
  }
}
