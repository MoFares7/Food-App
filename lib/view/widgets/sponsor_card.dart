import 'package:flutter/material.dart';

import '../../configs/size.dart';

class SponsorCard extends StatelessWidget {
  const SponsorCard({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defultPadding),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: defultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: defultPadding,
                    ),
                    Text(
                      title,
                      style: const TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
