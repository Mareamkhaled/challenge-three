import 'package:flutter/material.dart';

class load extends StatelessWidget {
   load({super.key , required this.val,  required this.onTap});
final double val;
 Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
               children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25,left: 15),
                  child: IconButton(
                        style: const ButtonStyle(
                          //backgroundColor: MaterialStatePropertyAll(Colors.red)
                         iconSize: MaterialStatePropertyAll(25)
                        ),
                        icon: const Icon(Icons.arrow_back),
                        onPressed: onTap
                        
                      ),
                )
                , Container(
                  padding: const EdgeInsets.only(left: 40,right: 10,top: 25),
                  width: 250,
                  child: LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(10),
                    minHeight: 10,
                    value: val, // value between 0.0 and 1.0
                    backgroundColor: const Color(0xffFFE9F1),
                    color: const Color(0xffFF5069), // background color for the track
                    //valueColor: Colors.red, // color for the progress bar
                  ),
                         ),
               ],
             );
  }
}