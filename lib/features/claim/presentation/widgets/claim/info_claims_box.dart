import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';

class InfoClaimsBox extends StatelessWidget {
  final String text;
  const InfoClaimsBox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width,
      color: PersonalizedColor.mainColor,
      padding: const EdgeInsets.all(8),
      child: Row(children: [
        const Icon(
          Icons.info,
          color: Colors.white,
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
