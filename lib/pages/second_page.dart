import 'package:challenge_three/components/load.dart';
import 'package:challenge_three/pages/first_page.dart';
import 'package:challenge_three/pages/third_page.dart';
import 'package:flutter/material.dart';

class second_page extends StatelessWidget {
  const second_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
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
                 //Color(0xffFBAEB8),

                      ],
             )
           ),
           child:Column(
        children: [
       load(val: 0.6, onTap: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return const first_page();
              }));
            },)
      
       ,
         const SizedBox(height: 10,),
             const Text('What’s Your Gender?',
             style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,

             ),),
             const Text('Tell us about your gender',
             style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
             ),),
              //  CircleAvatar(
              //  backgroundImage: AssetImage('assets/female.png'),
              //  radius: 80, // Set the desired radius of the circle
              //  ),
const Spacer(flex: 2,),
//                ClipOval(
//   child: Container(
//     decoration: const BoxDecoration(
//       color: Color(0xffF0E4E6),
//       image: DecorationImage(image: AssetImage('assets/female.png'),fit: BoxFit.contain)
//     ),
//     width: 150, // Set equal width and height for a circle
//     height: 150,
//   ),
// ),
Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    color: Color(0xffF0E4E6)
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image(
        width: 70,
        image: AssetImage('assets/female.png')),
      Text("Female",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w500),)
    ],
  ),
),
const Spacer(flex: 1,),
Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    color: Color(0xffFF5069)
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image(
        width: 70,
        image: AssetImage('assets/male.png')),
      Text("Male",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w500),)
    ],
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
                        MaterialPageRoute(builder: (context) => const third_page()),
                         );
                      },
                      child: const Text('Continue' , style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
             ),
             const Spacer(flex: 1,)

            
        ],
      )
      
      
     ) );
  }
}