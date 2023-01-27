import 'package:flutter/material.dart';


// ignore: must_be_immutable
class TabBarTitle extends StatelessWidget {
   TabBarTitle({
    super.key,
    required this.title
    });

  String title;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
          child: Text(title,style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w500,color: Colors.black),),
        ),
        // ignore: prefer_const_constructors
        
      ],
    );
  }
}