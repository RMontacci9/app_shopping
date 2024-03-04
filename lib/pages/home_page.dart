import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category_list_widget.dart';
import 'package:shopping/widgets/product/product_list_widget.dart';
import 'package:shopping/widgets/search_box_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 60,
            ),
            SearchBox(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Categories',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: CategoryListWidget(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See all'),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: ProductListWidget(
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
