import 'package:flutter/material.dart';
import 'package:fooddelivery/widgets/cart_items.dart';

class FoodOrderPage extends StatelessWidget {
  const FoodOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAFAFAFA),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3a3737),
          ),
        ),
        title: Center(
          child: Text(
            'Item Carts',
            style: TextStyle(
              color: Color(0xFF3a3737),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Your Food Cart',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10),
              CartItem(
                  name: 'Grilled Salmon',
                  price: '\$250',
                  image: 'ic_popular_food_1',
                  quantity: "2"),
              CartItem(
                  name: 'Meat Vegetable',
                  price: '\$100',
                  image: 'ic_popular_food_4',
                  quantity: "5"),
            ],
          ),
        ),
      ),
    );
  }
}
