import 'package:challenge_three/components/load.dart';
import 'package:challenge_three/pages/second_page.dart';
import 'package:flutter/material.dart';

class first_page extends StatelessWidget {
  const first_page({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Container(
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
           child:
        
         Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            load(val: 0.5, onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return ();
              // }));
            },),
             const SizedBox(height: 10,),
             const Text('How Old Are You?',
             style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,

             ),),
             const Text('Please provide your age in years',
             style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
             ),),
             const Spacer(flex: 1,),
             //sliderWidget()
             const Column( 
             children: [
             Text('29',style: TextStyle(color: Color(0xffB3AAAC),fontSize:32,fontWeight: FontWeight.w400),),
             Text('30',style: TextStyle(color: Color(0xff80797A),fontSize:40,fontWeight: FontWeight.w400),),
             Text('31',style: TextStyle(color: Color(0xff000000),fontSize:48,fontWeight: FontWeight.w400),),
             Divider(thickness: 3,color: Color(0xffFF5069),indent: 120,endIndent: 120,),
             Text('32',style: TextStyle(color: Color(0xffFF5069),fontSize:64,fontWeight: FontWeight.w700),),
             Divider(thickness: 3,color: Color(0xffFF5069),indent: 120,endIndent: 120,),
             Text('33',style: TextStyle(color: Color(0xff000000),fontSize:48,fontWeight: FontWeight.w400),),
             Text('34',style: TextStyle(color: Color(0xff80797A),fontSize:40,fontWeight: FontWeight.w400),),
             Text('35',style: TextStyle(color: Color(0xffB3AAAC),fontSize:32,fontWeight: FontWeight.w400),),
              ],
             ),
             
            const Spacer(flex: 1,),

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
                        MaterialPageRoute(builder: (context) => const second_page()),
                         );
                      },
                      child: const Text('Continue' , style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
             ),
            const Spacer(flex: 1,),
           ],
         ),
         
    )
    
    
    );
  }
}


