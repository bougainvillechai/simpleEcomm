import 'package:crocs_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //image
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),
          Text(
            shoe.desc,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('\KWD ' + shoe.price, style: TextStyle(color: Colors.grey),),
                    const SizedBox(
                      height: 5,
                    )
                    
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(17),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],

        //desc

        //price

        //button to add to the cart
      ),
    );
  }
}
