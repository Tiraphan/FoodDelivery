import 'package:flutter/material.dart';
import 'package:fooddelivery/widgets/popular_foods_widget.dart';
import 'package:fooddelivery/widgets/top_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: const Text(
          'What would you like to eat?',
          style: TextStyle(
            color: Color(0xFF3A3737),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Color(0xFF3A3737),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.redAccent,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.redAccent,
                  ),
                  suffixIcon: Icon(
                    Icons.sort,
                    color: Colors.redAccent,
                  ),
                  hintText: 'What would you like to buy?',
                ),
              ),
            ),
            // Top Menu Widget here
            TopMenus(),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Foods',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Popular Foods Widget hers.....
            PopularFoodsWidget(),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Foods',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            // Best Foods Widget here...
          ],
        ),
      ),
    );
  }
}
