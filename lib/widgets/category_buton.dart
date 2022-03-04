import 'package:flutter/material.dart';
import 'package:flutter_design_case_new_balance/styles/colors.dart';

class CategoryButton extends StatefulWidget {
  CategoryButton(this._isSelected,
      {required this.icon, required this.title, Key? key})
      : super(key: key);
  bool _isSelected = false;
  final IconData icon;
  final String title;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    var backgroundColor =
        widget._isSelected ? AppColors.buttonRed : Colors.white;
    var foregroundColor =
        widget._isSelected ? Colors.white : AppColors.buttonBlack;
    // var iconColor =
    //     widget._isSelected ? Colors.white : AppColors.buttonBlack;
    return InkWell(
      onTap: () {
        setState(() {
          widget._isSelected = !widget._isSelected;
        });
      },
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(141, 156, 156, 156),
              blurRadius: 20.0,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: SizedBox(
          height: 56,
          width: 170,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    widget.icon,
                    size: 30,
                    color: backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: foregroundColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  widget.title,
                  style: TextStyle(color: foregroundColor, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
