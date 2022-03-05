import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.buttonRed,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                        child: const Text(
                          "NEW",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        size: 20,
                        color: AppColors.buttonRed,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Image.network(
                        'https://nbsklep.pl/picture/fit-in/900x619/filters:fill(white)/adb6add11740501ff96e9f2dcd6e12f2.jpg'),
                  ),
                  Row(
                    children: [
                      Text(
                        "574V1",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "(In Stock)",
                        style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Men",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 14,
                        color: AppColors.buttonRed,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: AppColors.buttonRed,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: AppColors.buttonRed,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: AppColors.buttonRed,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: AppColors.buttonRed,
                      ),
                      Text(
                        "(14)",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        r"$",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "120.00",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: AppColors.buttonBlack,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))
                //shape:
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),),)
                ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 12,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Add to cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
