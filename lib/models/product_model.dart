class Product
{
  final id;
  final product_name;
  final product_price;

 const Product({this.id,this.product_name,this.product_price});

 factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      product_name: json['product_name'],
    );
  }
}