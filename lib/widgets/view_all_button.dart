import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(children: [
        const Text(
          "View All",
          style: TextStyle(color: AppColors.buttonRed),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 18,
          width: 18,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AppColors.buttonRed,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 18,
          ),
        ),
      ]),
      onPressed: () {},
    );
  }
}
