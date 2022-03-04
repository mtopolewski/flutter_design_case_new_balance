import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.transparent,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            color: Colors.white,
            height: 110,
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: MainTabButton(),
        ),
      ]),
    );
  }
}

class MainTabButton extends StatelessWidget {
  const MainTabButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      color: Colors.transparent,
      child: SizedBox(
        height: 74,
        width: 74,
        child: Stack(
          children: [
            InkWell(
              onTap: () {},
              child: Ink(
                decoration: const BoxDecoration(
                  color: AppColors.buttonRed,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const SizedBox(
                  height: 74,
                  width: 74,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  //color: Colors.amber,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                //color: Colors.white,
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: AppColors.buttonRed,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(
                        color: AppColors.buttonRed,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
