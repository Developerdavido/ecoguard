import 'package:ecoguard_project/core/common/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/res/media.dart';


class CenterLogo extends StatelessWidget {
  const CenterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: context.height * 0.1,
        width: context.width * 0.3,
        child: SvgPicture.asset(Media.logo, height: context.height * 0.1, width: context.width * 0.3,),
      ),
    );
  }
}
