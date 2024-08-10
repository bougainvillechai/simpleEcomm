import 'package:crocs_app/components/shoe-tile.dart';
import 'package:crocs_app/models/cart.dart';
import 'package:crocs_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //search bar
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
        ),

        //message

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text("Come as you may...",
              style: TextStyle(color: Colors.grey[600], fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot Picks🔥",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.grey[900]),
              ),
              const Text("See all",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.blue))
            ],
          ),
        ),
        //hot picks
        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
          Shoe shoe = value.getShoeList()[index];
          return ShoeTile(
            shoe: shoe
          );
        })),
        // Padding(
        //   padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        //   child: Divider(
        //     color: Colors.grey[300]
        //   ),
        // )
      ],
    ),);
  }
}
