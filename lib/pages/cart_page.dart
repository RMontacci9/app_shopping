import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TOTAL'),
                      const SizedBox(height: 5,),
                      Text('\$4250', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),)
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5),),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: (){},
                    child: Text('Checkout', style: TextStyle(color: Colors.white, ),),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _productList(context) {
    return ListView(
      children: [
        _productItem(),
        _productItem(),
        _productItem(),
        _productItem(),
        _productItem(),
      ],
    );
  }

  Widget teste(){
    return Container();
  }

  Widget _productItem() {
    return Container(
      height: 120,
      margin: EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              'assets/images/product-1.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0),
            child: Column(
              children: [
                Text('Titulo do produto'),
                Text(
                  '\$200',
                  style: TextStyle(color: Colors.blue),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
