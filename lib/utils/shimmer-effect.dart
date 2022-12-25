import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class ShimmperEffect extends StatelessWidget{

  final double widht;
  final double height;
  final ShapeBorder shapeBorder;

  const ShimmperEffect.store({
    required this.widht,
    required this.height,
    this.shapeBorder = const CircleBorder()
});


  @override
  Widget build(BuildContext context) {
   return Shimmer.fromColors(
     baseColor: Colors.grey[400]!,
     highlightColor: Colors.grey[300]!,
     child: Container(
       width: widht,
       height: height,
       decoration: ShapeDecoration(
         color: Colors.grey,
         shape: shapeBorder
       ),
     ),
   );
  }

}