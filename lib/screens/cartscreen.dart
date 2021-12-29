import 'package:flutter/material.dart';
import 'package:food_d_app/model/data.dart';
import 'package:food_d_app/model/order.dart';
import 'package:food_d_app/model/user.dart';
import 'package:food_d_app/widgets/build_cart_item.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // int quantity = 3;

  // _buildCartItem(Order order) {
  //   print(quantity);

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(
          child: Text('Cart(${currentUser.cart!.length})'),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext contex, int index) {
            Order order = currentUser.cart![index];
            return BuildCartItem(
              order: order,
            );
          },
          separatorBuilder: (BuildContext contex, int index) {
            return const Divider(
              height: 1.0,
              color: Colors.grey,
            );
          },
          itemCount: currentUser.cart!.length),
    );
  }
}
