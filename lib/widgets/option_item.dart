import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  final String optionName;
  final VoidCallback onTap;

  const OptionItem({
    Key? key,
    required this.optionName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      color: Colors.grey,
      thickness: 1,
      height: 0,
    );

    return Column(
      children: [
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.grey.withOpacity(0.4),
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        optionName,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.chevron_right,
                    size: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
        divider,
      ],
    );
  }
}
