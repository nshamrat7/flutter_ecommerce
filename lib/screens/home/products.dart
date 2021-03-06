import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/product_details/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': '500',
      'price': '400'
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress1.jpeg',
      'old_price': '1000',
      'price': '900'
    },
    {
      'name': 'Hills',
      'picture': 'images/products/hills1.jpeg',
      'old_price': '1000',
      'price': '900'
    },
    {
      'name': 'Pants',
      'picture': 'images/products/pants1.jpg',
      'old_price': '1000',
      'price': '900'
    },
    {
      'name': 'Shoe',
      'picture': 'images/products/shoe1.jpg',
      'old_price': '1000',
      'price': '900'
    },
    {
      'name': 'SKT',
      'picture': 'images/products/skt1.jpeg',
      'old_price': '1000',
      'price': '900'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleProduct(
                product_list[index]['name'],
                product_list[index]['picture'],
                product_list[index]['old_price'],
                product_list[index]['price']),
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
// Design of single Product
  final prod_name;
  final prod_picture;
  final old_price;
  final price;

  SingleProduct(this.prod_name, this.prod_picture, this.old_price, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      //For looking like card
      child: Hero(
        //for getting opening animation
        tag: prod_name,
        child: Material(
          child: InkWell(
            //for getting on click
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>

                    //Opening the page of product detail

                    ProductDetails(prod_name, prod_picture, old_price, price))),
            child: GridTile(
              //For getting Grid Style
              footer: Container(
                  //for controlling color
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          prod_name,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "\$${price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 14.0),
                      )
                    ],
                  )),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
