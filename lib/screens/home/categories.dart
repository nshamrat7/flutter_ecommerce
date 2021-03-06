import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {

    // Product Category List

    return Container(
      height: 100.0,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category('images/cats/accessories.png', 'Accessories'),
          Category('images/cats/dress.png', 'Dress'),
          Category('images/cats/formal.png', 'Formal'),
          Category('images/cats/informal.png', 'Informal'),
          Category('images/cats/jeans.png', 'Jeans'),
          Category('images/cats/shoe.png', 'Shoe'),
          Category('images/cats/tshirt.png', 'T-shirt'),
        ],
      ),
    );
  }
}

// Single Category Imtem

class Category extends StatelessWidget {

  final String _image_location;
  final String _image_caption;

  Category(this._image_location, this._image_caption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        //For Click
        onTap: () {},
        child: Container(

          width: 100.0,
          child: ListTile(
            title: Image.asset(

              _image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Text(
              _image_caption,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ),
      ),
    );
  }
}
