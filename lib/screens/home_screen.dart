import '../models/product_model.dart';
import 'package:flutter/material.dart';
import '../http-requests/fetch_product.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
  

  
}

class _HomeWidgetState extends State<HomeWidget> {
  Future<Product> products;
  @override
  void initState() {
    super.initState();
    products = fetchProducts();
    print(products);
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(centerTitle: true,),
      body: Center(child: Text("Welcome everyone"),),
    );
  }
}