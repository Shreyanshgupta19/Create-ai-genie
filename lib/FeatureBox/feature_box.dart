import 'package:create_ai_genie/pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureBox extends StatelessWidget{
  const FeatureBox({super.key,required this.color, required this.headerText, required this.descriptionText});
  final Color color;
  final String headerText;
  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin:  EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(35),
        vertical: ScreenUtil().setHeight(10),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setSp(15)),),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(20)).copyWith(left: ScreenUtil().setHeight(15)),//only(top: 20.0, left: 15, bottom: 20, right: 15),
        child: Column(
          children: [
          Align(
            alignment: width < 600 ? Alignment.centerLeft: Alignment.center,
            child: Text(headerText,
              style:  TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.blackColor,
                fontSize: ScreenUtil().setSp(12),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            SizedBox(height:ScreenUtil().setHeight(3),),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(descriptionText,
                style:  TextStyle(
                  fontSize: ScreenUtil().setSp(10),
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                ),
              ),
            ),
         ],
        ),
      ),
    );
  }

}
//
// import 'package:create_ai_genie/pallete.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class FeatureBox extends StatelessWidget{
//   const FeatureBox({super.key,required this.color, required this.headerText, required this.descriptionText});
//   final Color color;
//   final String headerText;
//   final String descriptionText;
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//
//     return Container(
//       height: height*0.2,
//       width: width*0.2,
//       margin: const EdgeInsets.symmetric(
//         horizontal: 35,
//         vertical: 10,
//       ),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: const BorderRadius.all(Radius.circular(15),),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20.0).copyWith(left: 15),//only(top: 20.0, left: 15, bottom: 20, right: 15),
//         child: Column(
//           children: [
//             Align(
//               alignment: width < 600 ? Alignment.centerLeft: Alignment.center,
//               child: Expanded(
//                 child: Text(headerText,
//                   style: const TextStyle(
//                     fontFamily: 'Cera Pro',
//                     color: Pallete.blackColor,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 3,),
//             Padding(
//               padding: const EdgeInsets.only(right: 20),
//               child: Expanded(
//                 child: Text(descriptionText,
//                   style: const TextStyle(
//                     fontFamily: 'Cera Pro',
//                     color: Pallete.blackColor,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }