import 'package:flutter/material.dart';
import 'package:untitled/widgets/tx.dart';

class rounded extends StatelessWidget {
  final String titl;
  final Icon? icn;
  final Color? clr;
  final VoidCallback? callback;

  //CONSTRUCTOR
  rounded({
    required this.titl,
    this.icn,
    this.callback,
    this.clr = Colors.lightGreen,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icn !=  null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icn!,
                Text(
                  titl,
                  style: myStyle(),
                ),
              ],
            )
          : Text(
              titl,
              style: myStyle(),
            ),
      style: ElevatedButton.styleFrom(
        backgroundColor: clr,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
