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
      color: PersonalizedColor.infoColor,
      padding: const EdgeInsets.all(8),
      child: Row(children: [
        const Icon(
          Icons.info,
          color: Colors.black54,
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
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
