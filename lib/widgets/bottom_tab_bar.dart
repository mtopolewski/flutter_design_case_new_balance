import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';
import 'dart:math' as Math;

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  var pressedState = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.transparent,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ClipShadowPath(
              shadow: const BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
                offset: Offset(0, 0), // Shadow position
              ),
              clipper: BottomMenuClipper(),
              child: ClipPath(
                clipper: BottomMenuClipper(),
                child: Container(
                  color: Colors.white,
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TabButton(
                        icon: Icons.home,
                        isPressed: pressedState[0],
                        onTap: () {
                          setState(() {
                            _resetState();
                            pressedState[0] = true;
                          });
                        },
                      ),
                      TabButton(
                        icon: Icons.favorite_border_outlined,
                        isPressed: pressedState[1],
                        onTap: () {
                          setState(() {
                            _resetState();
                            pressedState[1] = true;
                          });
                        },
                      ),
                      Container(
                        width: 74,
                      ),
                      TabButton(
                        icon: Icons.notifications,
                        isPressed: pressedState[2],
                        onTap: () {
                          setState(() {
                            _resetState();
                            pressedState[2] = true;
                          });
                        },
                      ),
                      TabButton(
                        icon: Icons.account_box,
                        isPressed: pressedState[3],
                        onTap: () {
                          setState(() {
                            _resetState();
                            pressedState[3] = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            // child: FloatingActionButton(
            //   onPressed: () {},
            // ),
            child: MainTabButton(),
          ),
        ],
      ),
    );
  }

  void _resetState() {
    pressedState[0] = false;
    pressedState[1] = false;
    pressedState[2] = false;
    pressedState[3] = false;
    // pressedState.forEach((element) {
    //   element = false;
    // });
  }
}

class MainTabButton extends StatelessWidget {
  const MainTabButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      width: 74,
      child: Stack(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.buttonRed,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x55000000),
                    blurRadius: 16.0,
                    offset: Offset(4, 4),
                  ),
                ],
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

class TabButton extends StatefulWidget {
  const TabButton(
      {required this.icon,
      required this.onTap,
      this.isPressed = false,
      Key? key})
      : super(key: key);
  final IconData icon;
  final bool isPressed;
  final Function onTap;

  @override
  State<TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  @override
  Widget build(BuildContext context) {
    var isPressed = widget.isPressed;
    var selectorColor = isPressed ? AppColors.buttonRed : Colors.transparent;
    var iconColor = isPressed ? AppColors.buttonRed : Colors.grey;
    return Material(
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          widget.onTap.call();
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: SizedBox(
          height: 60,
          child: Ink(
            child: SizedBox(
              height: 60,
              child: Column(
                children: [
                  Icon(
                    widget.icon,
                    size: 36,
                    color: iconColor,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: selectorColor,
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

class ClipShadowPath extends StatelessWidget {
  final Shadow shadow;
  final CustomClipper<Path> clipper;
  final Widget child;

  const ClipShadowPath({
    Key? key,
    required this.shadow,
    required this.clipper,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ClipShadowShadowPainter(
        clipper: clipper,
        shadow: shadow,
      ),
      child: ClipPath(child: child, clipper: clipper),
    );
  }
}

class _ClipShadowShadowPainter extends CustomPainter {
  final Shadow shadow;
  final CustomClipper<Path> clipper;

  _ClipShadowShadowPainter({required this.shadow, required this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
