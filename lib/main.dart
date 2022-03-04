import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';
import 'package:flutter_design_case_new_balance/styles/sizes.dart';
import 'package:flutter_design_case_new_balance/widgets/dots_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: AppColors.backgroundWhite,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const DotsButton(),
              const SizedBox(
                height: 30,
                child: Image(
                  image: AssetImage('lib/assets/new_balance_red_logo.png'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Ink(
                  child: const SizedBox(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //   titleSpacing: 0,
      //   backgroundColor: AppColors.backgroundWhite,
      //   //toolbarOpacity: 0,
      //   shadowColor: Colors.transparent,
      //   leading: const Center(child: DotsButton()),
      //   centerTitle: true,
      //   //elevation: 0,
      //   title: const SizedBox(
      //     height: 30,
      //     child: Image(
      //       image: AssetImage('lib/assets/new_balance_red_logo.png'),
      //     ),
      //   ),
      //   actions: [
      //     InkWell(
      //       onTap: () {},
      //       child: Ink(
      //         child: const SizedBox(
      //           height: 40,
      //           width: 40,
      //           child: Icon(
      //             Icons.search,
      //             color: Colors.black,
      //             size: 36,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  height: 200,
                  color: Colors.purple,
                ),
                Container(
                  height: 200,
                  color: Colors.pink,
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //TODO: change to bottom bar
              height: 100,
              color: Color(0xBB000000),
            ),
          )
        ],
      ),
    );
  }
}
