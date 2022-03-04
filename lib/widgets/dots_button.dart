import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';

class DotsButton extends StatelessWidget {
  const DotsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        color: Colors.transparent,
        child: SizedBox(
          height: 36,
          width: 36,
          child: GridView.count(
            crossAxisCount: 2,
            children: const [
              Dot(
                color: AppColors.buttonBlack,
              ),
              Dot(
                color: AppColors.buttonBlack,
              ),
              Dot(
                color: AppColors.buttonBlack,
              ),
              Dot(
                color: AppColors.buttonRed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({required this.color, Key? key}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(4))),
      ),
    );
  }
}
