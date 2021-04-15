part of 'pages.dart';

// class Cari extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: RaisedButton(
//             child: Text('Show Buttom Sheet'),
//             onPressed: () {
//               showModalBottomSheet(
//                   context: context,
//                   builder: (context) {
//                     return StreamBuilder(
//                       stream: .stream,
//                       builder: (context, snapshot) => GestureDetector(
//                           onVerticalDragUpdate: (DragUpdateDetails details) {
//                             position = MediaQuery.of(context).size.height -
//                                 details.globalPosition.dy;
//                             print('position dy = ${position}');

//                             position.isNegative
//                                 ? Navigator.pop(context)
//                                 : controller.add(position);
//                           },
//                           behavior: HitTestBehavior.translucent,
//                           child: Container(
//                             color: Colors.red,
//                             height: snapshot.hasData ? snapshot.data : 200.0,
//                             width: double.infinity,
//                             child: Text('Child'),
//                           )),
//                     );
//                   });
//             }),
//       ),
//     );
//   }
// }
