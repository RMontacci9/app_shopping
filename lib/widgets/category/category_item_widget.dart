import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: new Offset(1, 1),
              blurRadius: 5,
              spreadRadius: 2),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(64),
        ),
      ),
      child: Image.asset(image),
    );
  }
}
