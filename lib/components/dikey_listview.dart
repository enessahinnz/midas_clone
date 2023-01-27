import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DikeyListview extends StatelessWidget {
   DikeyListview({
    super.key,
    required this.rank,
    required this.symbol,
    required this.name,
    required this.change
    
    });
  
  int rank;
  String symbol;
  String name;
  String change;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text(rank.toString(),style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w300,color: Colors.black),),
                       const SizedBox(
                         width: 10,
                       ),
                       const Icon(Icons.circle_outlined,size: 40,),
                     ],
                   ),
                   const SizedBox(
                     width: 10,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                       Text(symbol,style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500,color: Colors.black),),
                       Text(name,style: Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w300,color: Colors.black),),
                     ],
                   ),
                 ],
               ),


               Text(change,style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500,color: Colors.green),),

            ],
          ),
    );
  }
}