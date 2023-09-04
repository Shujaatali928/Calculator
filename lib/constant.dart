import 'dart:ffi';

import 'package:flutter/material.dart';

const Color grey = Colors.grey;
const Color green = Colors.blue;
const Color red = Colors.red;
const Color twc = Colors.white;
const Color tbc = Colors.black;
const Color toc = Colors.deepOrange;

const headingtextstyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue);
const tbtntxtstyle = TextStyle(
  fontSize: 15,
);
// const operabtntxtstyle = TextStyle(fontSize: 15,);
// const functbtntxtstyle = TextStyle(fontSize: 15,);

class num_btn extends StatelessWidget {
  String title;
  Color bgcolor;
  Color txtcolor;
  Color border;
  VoidCallback onpress;

  num_btn(
      {Key? key,
      required this.title,
        required this.onpress,
      this.bgcolor = const Color(0xffE0E0E0),
      this.txtcolor = const Color(0xffee7600),
        this.border = const Color(0xffee7600)

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgcolor,
              border: Border.all(color: border)
            ),
            child: Center(
              child: Text(title, style: TextStyle(fontSize: 25, color: txtcolor, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
class eql_btn extends StatelessWidget {
  String title;
  Color bgcolor;
  Color txtcolor;
  VoidCallback onpress;

  eql_btn(
      {Key? key,
        required this.title,
        required this.onpress,
        this.bgcolor = const Color(0xffa5a5a5),
        this.txtcolor = const Color(0xffee7600),

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgcolor,
            ),
            child: Center(
              child: Text(title, style: TextStyle(fontSize: 50, color: txtcolor, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
// class operator_btn extends StatelessWidget {
//   String title;
//   operator_btn({Key? key, required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Container(
//         height: 50,
//         decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.deepOrange,
//             // borderRadius: BorderRadius.circular(10)
//         ),
//         child: Center(
//           child: Text(title, style: operabtntxtstyle,),
//
//         ),
//       ),
//     );
//   }
// }
// class function_btn extends StatelessWidget {
//   String title;
//   function_btn({Key? key, required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Container(
//         height: 50,
//         decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.grey.shade300,
//             // borderRadius: BorderRadius.circular(100)
//         ),
//         child: Center(
//           child: Text(title, style: functbtntxtstyle,),
//
//         ),
//       ),
//     );
//   }
// }
