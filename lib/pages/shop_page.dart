import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpleecommerce/models/shoeTileModel.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search)
            ],
          ),
        ),
        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "\"Embrace Every Step with Bold Comfort\"",
            style:
                TextStyle(color: Colors.grey[500], fontStyle: FontStyle.italic),
          ),
        ),
        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 29),
              ),
              Text(
                "See all",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
          shoe Shoe = shoe(
              name: 'Croc Air Max',
              price: "19 KD",
              image_path: "lib/crocs/red.png",
              desc: "The bull among comfortable shoes");
          return ShoeTile(
            Shoe: Shoe,
          );
        }))
      ],
    );
  }
}
