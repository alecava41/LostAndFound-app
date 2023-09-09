import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';

class ModalSheetOptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onClick;

  const ModalSheetOptionButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? PersonalizedColor.claimAcceptedStatusColor : Colors.transparent,
      child: InkWell(
        onTap: () {
          onClick();
          Navigator.pop(context);
        },
        splashColor: PersonalizedColor.splashGreyColor,
        child: Container(
          padding: const EdgeInsets.all(14),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.6)),
          ),
        ),
      ),
    );
  }
}
