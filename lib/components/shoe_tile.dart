import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpleecommerce/models/shoeTileModel.dart';

class ShoeTile extends StatelessWidget {
  shoe Shoe;
  ShoeTile({Key? key, required this.Shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
        //shoe pic
        Image.asset(Shoe.image_path)
        //desc
        //price
        //cart
        ],
       
      ),
    );
  }
}
