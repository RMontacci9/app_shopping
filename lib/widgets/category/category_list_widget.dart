import 'package:flutter/material.dart';

import 'category_item_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItemWidget(image:'assets/images/Icon_Devices.png'),
          CategoryItemWidget(image:'assets/images/Icon_Gadgets.png'),
          CategoryItemWidget(image:'assets/images/Icon_Gaming.png'),
          CategoryItemWidget(image:'assets/images/Icon_Mens_Shoe.png'),
          CategoryItemWidget(image:'assets/images/Icon_Womens_Shoe.png'),
        ],
      ),
    );
  }
}
