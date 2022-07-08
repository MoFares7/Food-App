
import 'package:ataa_charity_system/configs/size.dart';
import 'package:flutter/material.dart';

import '../../../configs/theme.dart';
import '../../../model/page_banner.dart';

class PageItem extends StatelessWidget {
  final PageBanner pageBanner;
  const PageItem({
    Key? key,
    required this.pageBanner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          pageBanner.title,
          style: const TextStyle(
              color: AppColors.primary1,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        const SizedBox(
          height: defultPadding,
        ),
        Text(
          pageBanner.subtitle,
          style: const TextStyle(
              color: AppColors.textDark,
              fontWeight: FontWeight.bold,
              fontSize: 10),
        ),
        Expanded(
          child: Image.asset(
            pageBanner.imageUrl,
            height: 400,
          ),
        )
      ],
    );
  }
}
