import 'package:ecoguard_project/core/res/media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../res/colors.dart';

class EcoguardLogo extends StatelessWidget {
  const EcoguardLogo({super.key, this.baseColor});

  final Color? baseColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset(
            Media.logo,
            height: 40,
            width: 40,
            colorFilter: ColorFilter.mode(
                baseColor ?? AppColors.onPrimaryColor, BlendMode.srcIn),
          ),
          SvgPicture.asset(
            Media.ecoGuard,
            height: 40,
            colorFilter: ColorFilter.mode(
                baseColor ?? AppColors.onPrimaryColor, BlendMode.srcIn),
          )
        ],
      ),
    );
  }
}
