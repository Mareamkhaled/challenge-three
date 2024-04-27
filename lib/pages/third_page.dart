import 'package:challenge_three/components/load.dart';
import 'package:challenge_three/pages/fouurth_pagw.dart';
import 'package:challenge_three/pages/second_page.dart';
import 'package:flutter/material.dart';

class third_page extends StatelessWidget {
  const third_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Container(
           decoration: const BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topRight,
               end: Alignment.bottomLeft,
               colors: [
                 Color(0xffFFF8F9),
                 Color(0xffFFF5F6),
                 Color(0xffFFF3F5),
                 Color(0xffFFEFF1),
                 Color(0xffFFECEF),
                 Color(0xffFFEAED),
                 Color(0xffFFEAED),
                 Color(0xffE9BAC0),

               ],
             )
           ),
           child: Column(
         children: [
           load(val: 0.8, onTap: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return const second_page();
              }));
            },),

           const SizedBox(height: 20,),
              const Text('I Am Looking For...',
              style: TextStyle(
               fontWeight: FontWeight.w600,
               fontSize: 24,

              ),),
              const Text('Provide us with further insights into your\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t preferences',
              style: TextStyle(
               fontSize: 14,
               fontWeight: FontWeight.w400
              ),),
                              const Spacer(flex: 2,),

            Container(
              width: 325,
              height: 54,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(100)
             ),
             child: RadioListTile(
              activeColor: const Color(0xffFF5069),
             // selected: true,
              title: const Text("A relationship"),
                 value: 1, 
                 groupValue: 0, 
                 onChanged: (value){
                 print(value); //selected value
                   }
                 ),
                ),
                 const Spacer(flex: 1,),

                Container(
              width: 325,
              height: 54,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(100),
              border: Border.all(color: const Color(0xffFF5069),width: 3)
             ),
             child: RadioListTile(
              activeColor: const Color(0xffFF5069),
             // selected: true,
              title: const Text("Something casual"),
                 value: 1, 
                 groupValue: 1, 
                 onChanged: (value){
                 print(value); //selected value
                   }
                 ),
                ),
              const Spacer(flex: 1,),

                Container(
              width: 325,
              height: 54,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(100)
             ),
             child: RadioListTile(
              activeColor: const Color(0xffFF5069),
             // selected: true,
              title: const Text("I’m not sure yet"),
                 value: 1, 
                 groupValue: 0, 
                 onChanged: (value){
                 print(value); //selected value
                   }
                 ),
                ),
                const Spacer(flex: 1,),

                Container(
              width: 325,
              height: 54,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(100)
             ),
             child: RadioListTile(
              activeColor: const Color(0xffFF5069),
             // selected: true,
              title: const Text("Prefer not to say"),
                 value: 1, 
                 groupValue: 0, 
                 onChanged: (value){
                 print(value); //selected value
                   }
                 ),
                ),
const Spacer(flex: 2,),
                Container(
              height: 56,
              width: 325,
              decoration: BoxDecoration(
                color: const Color(0xffFF5069),
                borderRadius: BorderRadius.circular(30)
              ),
               child: TextButton(
                
                      onPressed: () {
                        // Navigate to login page
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const fourth_page()),
                         );
                      },
                      child: const Text('Continue' , style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
             ),
const Spacer(flex: 1,)

         ],
       ),
          
         )
           

    );
    
   

         
      
    
  }
}