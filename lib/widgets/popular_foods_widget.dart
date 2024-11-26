import 'package:flutter/material.dart';
import 'package:fooddelivery/animation/scale_route.dart';

class PopularFoodsWidget extends StatefulWidget {
  const PopularFoodsWidget({super.key});

  @override
  State<PopularFoodsWidget> createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: PopularFoodItems(),
    );
  }
}

class PopularFoodsTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String price;
  String slug;

  PopularFoodsTiles({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(context, ScaleRoute(page: FooddetailsPage()));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                width: 170,
                height: 210,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.topRight,
                            //width: double.infinity,
                            padding: EdgeInsets.only(right: 5, top: 5),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFfae3e2),
                                    blurRadius: 25,
                                    offset: Offset(0.00, 0.75),
                                  )
                                ],
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Center(
                            child: Image.asset(
                              'assets/' + imageUrl + '.png',
                              height: 140,
                              width: 130,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 5, top: 5),
                          child: Text(
                            name,
                            style: TextStyle(
                              color: Color(0xFF6e6e71),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          //width: double.infinity,
                          padding: EdgeInsets.only(right: 5),
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFfae3e2),
                                  blurRadius: 25,
                                  offset: Offset(0.00, 0.75),
                                )
                              ],
                            ),
                            child: Icon(
                              Icons.near_me,
                              color: Colors.redAccent,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(
                        left: 5,
                        top: 5,
                        right: 5,
                      ),
                      child: Text(
                        price,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  const PopularFoodItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        PopularFoodsTiles(
            name: 'Fried Egg',
            imageUrl: 'ic_popular_food_1',
            price: '100.00',
            rating: '4.9',
            slug: 'fried_egg'),
        PopularFoodsTiles(
            name: 'Mix Vegetable',
            imageUrl: 'ic_popular_food_3',
            price: '150.00',
            rating: '4.9',
            slug: ''),
        PopularFoodsTiles(
            name: 'Salad Chicken',
            imageUrl: 'ic_popular_food_4',
            price: '122.00',
            rating: '2.0',
            slug: ''),
        PopularFoodsTiles(
            name: 'Red Meat, Salad',
            imageUrl: 'ic_popular_food_2',
            price: '150.00',
            rating: '4.9',
            slug: 'fried_egg'),
      ],
    );
  }
}
