import 'package:flutter/material.dart';

import '../../../utils/colors.dart';


class PersonalizedCheckBoxesForm extends StatelessWidget {
  final bool foundChecked;
  final bool lostChecked;
  final ValueChanged<bool?>? onFoundCheckedChanged;
  final ValueChanged<bool?>? onLostCheckedChanged;

  const PersonalizedCheckBoxesForm({super.key, 
    required this.foundChecked,
    required this.lostChecked,
    this.onFoundCheckedChanged,
    this.onLostCheckedChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
        Container(
          height: 90,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Search items:',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: PersonalizedColor.mainColor,
                        value: foundChecked,
                        onChanged: onFoundCheckedChanged,
                      ),
                      const Text(
                        'Found',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(width: 60),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: PersonalizedColor.mainColor,
                        value: lostChecked,
                        onChanged: onLostCheckedChanged,
                      ),
                      const Text('Lost', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
      ],
    );
  }
}
