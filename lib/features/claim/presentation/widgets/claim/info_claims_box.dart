import 'package:flutter/material.dart';

class InfoClaimsBox extends StatelessWidget {
  final String text;

  const InfoClaimsBox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(
            Icons.info,
            color: Theme.of(context).colorScheme.onPrimary,
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
                  style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
