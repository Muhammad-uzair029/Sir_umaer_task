import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import '../screens/details/components/cart_counter.dart';

import 'cart_counter.dart';

class CounterWithTxtBtn extends StatelessWidget {
  const CounterWithTxtBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
      Text("Add To Bag", style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
