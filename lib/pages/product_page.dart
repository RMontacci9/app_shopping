import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.image, required this.title, required this.description, required this.price});
  final String image;
  final String title;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0.1),
              elevation: 0.0,
              expandedHeight: 500,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(image),
              ), //faz o efeito sanfona que queremos
            ),
          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                title,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(description),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer. ',
              ),
            ),
          ],
        ),
      ), // permite ter mais de um scrollview na tela
    );
  }
}
