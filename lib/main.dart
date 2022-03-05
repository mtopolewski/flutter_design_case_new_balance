import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';
import 'package:flutter_design_case_new_balance/styles/sizes.dart';
import 'package:flutter_design_case_new_balance/widgets/bottom_tab_bar.dart';
import 'package:flutter_design_case_new_balance/widgets/category_buton.dart';
import 'package:flutter_design_case_new_balance/widgets/dots_button.dart';
import 'package:flutter_design_case_new_balance/widgets/product_item.dart';
import 'package:flutter_design_case_new_balance/widgets/view_all_button.dart';

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
        //shadowColor: Colors.transparent,
        elevation: 0,
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 140,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 120,
                          margin: const EdgeInsets.symmetric(
                              horizontal: AppSizes.defaultMargin),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(141, 156, 156, 156),
                                blurRadius: 20.0,
                                //offset: Offset(4, 4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSizes.defaultMargin),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: SizedBox(
                                height: 140,
                                child: Image(
                                  image: AssetImage(
                                    'lib/assets/new-balance-sudadera-con-capucha.png',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Start with essentials.",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppSizes.defaultMargin),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: AppSizes.defaultMargin, right: 10),
                          child: CategoryButton(true,
                              icon: Icons.shower_sharp, title: "Shoes"),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CategoryButton(false,
                              icon: Icons.block, title: "Clothings"),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CategoryButton(false,
                              icon: Icons.ballot, title: "Sport"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Best sellers",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      ViewAllButton(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.defaultMargin),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    childAspectRatio: 0.5,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: [
                      ProductItem(),
                      ProductItem(),
                      ProductItem(),
                      ProductItem(),
                      ProductItem(),
                      ProductItem(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 120,
                )
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BottomTabBar(),
          )
        ],
      ),
    );
  }
}
