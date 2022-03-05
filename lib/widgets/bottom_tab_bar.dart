import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';
import 'dart:math' as Math;

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.transparent,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ClipPath(
            clipper: BottomMenuClipper(),
            child: Container(
              color: Colors.white,
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TabButton(),
                  TabButton(),
                  Container(
                    width: 74,
                  ),
                  TabButton(),
                  TabButton(),
                ],
              ),
            ),
          ),
        ),
        const Align(
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
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: const Center(
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

class BottomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) => _getPath(size);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

  Path _getPath(Size size) {
    const middleButtonSize = 74.0;
    const topMargin = 20.0;
    const a = middleButtonSize;
    const b = middleButtonSize - topMargin + 8;

    var path = Path();

    path.lineTo(size.width / 2 - a, 0);
    path.quadraticBezierTo(
        size.width / 2 - a + 20, 0, size.width / 2 - a + 32, b / 2);

    path.quadraticBezierTo(size.width / 2 - a + 46, b, size.width / 2, b);

    path.quadraticBezierTo(
        size.width / 2 + a - 46, b, size.width / 2 + a - 32, b / 2);

    path.quadraticBezierTo(size.width / 2 + a - 20, 0, size.width / 2 + a, 0);

    // path.arcTo(
    //     Rect.fromCircle(
    //         center: Offset(size.width / 2, middleButtonSize - topMargin - 30),
    //         radius: middleButtonSize / 2 + 10),
    //     degToRad(-180), //TODO: fuszerka
    //     degToRad(-180), //TODO: fuszerka
    //     false);

    //path.lineTo(size.width / 2, b);
    // path.quadraticBezierTo(
    //     size.width / 2 + a + 20, 0, size.width / 2 + a - 30, b / 2);
    path.lineTo(size.width / 2 + a, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  double degToRad(num deg) => deg * (Math.pi / 180.0);
}

class TabButton extends StatelessWidget {
  const TabButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 60,
          child: Ink(
            child: SizedBox(
              height: 60,
              child: Column(
                children: [
                  const Icon(
                    Icons.ac_unit,
                    size: 36,
                    color: AppColors.buttonRed,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                        color: AppColors.buttonRed,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
