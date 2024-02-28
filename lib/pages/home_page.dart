import 'package:flutter/material.dart';
import 'package:shopping/pages/product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 60,
            ),
            _search(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Categories',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: _categoryList(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(fontSize: 30),
                ),
                TextButton(onPressed: () {}, child: Text('See all'))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: _productList(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _search() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          // é igual o rgbo Color.fromRGBO(0, 0, 0, 0.1),
          borderRadius: BorderRadius.all(
            Radius.circular(128),
          )),
      child: Row(
        children: [
          Icon(Icons.search),
          Container(
            width: 300,
            padding: EdgeInsets.only(left: 10),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Search...',
                labelStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryList() {
    return Container(
      width: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _categoryItem(),
          _categoryItem(),
          _categoryItem(),
          _categoryItem(),
          _categoryItem(),
        ],
      ),
    );
  }

  Widget _categoryItem() {
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
      child: Image.asset('assets/images/Icon_Devices.png'),
    );
  }

  Widget _productList(context) {
    return Container(
      width: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _productItem(context),
          _productItem(context),
          _productItem(context),
          _productItem(context),
          _productItem(context),

        ],
      ),
    );
  }

  Widget _productItem(context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector( // widget responsável pela detecção de gestos na tela
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/product-1.png',
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            child: Text('Titulo do produto', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),),
          ),
          const SizedBox(height: 5,),
          Text('Marca do produto', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
          const SizedBox(height: 5,),
          Text('\$ 200', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF00C569)),),
        ],
      ),
    );
  }
}
