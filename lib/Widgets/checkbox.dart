// import 'package:flutter/material.dart';
// import 'package:to_do/provider.dart';
// import 'package:provider/provider.dart';
// import 'home.dart';
// import 'package:to_do/home.dart';
//
// Widget checkbox(bool state,int index) {
//   return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Consumer<provider>(builder: (context, provide, child) {
//         return Container(
//           height: 20,
//           width: 20,
//           child: Checkbox(
//             materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//             value: state,
//             onChanged: (state) {
//               print(State);
//             //  provide.remove(index);
//             },
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//           ),
//         );
//       }));
// }
