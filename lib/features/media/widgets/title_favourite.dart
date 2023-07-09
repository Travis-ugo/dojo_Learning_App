
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugoku/core/text.dart';

class TitleAndFavourite extends StatelessWidget {
  const TitleAndFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AppText(text: 'Momma', fontSize: 28, fontWeight: FontWeight.w700,),
              SizedBox(height: 8),
           AppText(text: 'Kendrick Lamar', fontColor: Colors.grey,fontSize: 18,),
            ],
          ),
          GestureDetector(
            onTap: (){}, 
            child: const Icon(CupertinoIcons.heart, size: 30,),
          ),
        ],
      ),
    );
  }
}