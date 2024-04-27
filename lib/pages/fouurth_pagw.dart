import 'package:challenge_three/components/contains.dart';
import 'package:challenge_three/components/load.dart';
import 'package:challenge_three/pages/third_page.dart';
import 'package:flutter/material.dart';

class fourth_page extends StatelessWidget {
  const fourth_page({super.key});

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
           child: Column(
            children: [
              load(val: 0.2, onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const third_page();
              }));
            },),
              const SizedBox(height: 10,),
              const Text('Select up to 3 interest',
              style: TextStyle(
               fontWeight: FontWeight.w600,
               fontSize: 24,

              ),),
              const Text('Tell us what piques your curiosity and\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t passions',
              style: TextStyle(
               fontSize: 14,
               fontWeight: FontWeight.w400
              ),),
             const SizedBox(height: 30,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 2,),
                  category(colorr: Color(0xffFF5069), name: "Reading", pic: 'assets/reading.png' ,colorr2: Colors.white,),
                  Spacer(flex: 1,),
                  category(colorr: Colors.white, name: 'Photography', pic: 'assets/photography.png',colorr2: Colors.black),
                  Spacer(flex: 2,)
                ],
              ),
               const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 1,),
                  category(colorr: Colors.white, name: "Gaming", pic: 'assets/gaming.png' ,colorr2: Colors.black,),
                  Spacer(flex: 1,),
                  category(colorr: Color(0xffFF5069), name: 'Music', pic: 'assets/music.png',colorr2: Colors.white),
                  Spacer(flex: 1,),
                  category(colorr: Colors.white, name: 'Travel', pic: 'assets/travel.png', colorr2: Colors.black)
                 , Spacer(flex: 1,)
                ],
              ),
               const SizedBox(height: 10,),
               const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 2,),
                  category(colorr: Color(0xffFF5069), name: "Painting", pic: 'assets/painting.png' ,colorr2: Colors.white,),
                  Spacer(flex: 1,),
                  category(colorr: Colors.white, name: 'Politics', pic: 'assets/politics.png',colorr2: Colors.black),
                  Spacer(flex: 2,)
                ],
              ),
               const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 1,),
                  category(colorr: Colors.white, name: "Charity", pic: 'assets/charity.png' ,colorr2: Colors.black,),
                  Spacer(flex: 1,),
                  category(colorr: Colors.white, name: 'Cooking', pic: 'assets/cooking.png',colorr2: Colors.black),
                  Spacer(flex: 1,),
                  category(colorr: Colors.white, name: 'Pets', pic: 'assets/pets.png', colorr2: Colors.black)
                 , Spacer(flex: 1,)
                ],
              ),
               const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 2,),
                  category(colorr: Color(0xffFF5069), name: "Sports", pic: 'assets/sports.png' ,colorr2: Colors.white,),
                  Spacer(flex: 1,),
                  category(colorr: Colors.white, name: 'Fashion', pic: 'assets/fashion.png',colorr2: Colors.black),
                  Spacer(flex: 2,)

            ],
           ),
           
           Padding(
             padding: const EdgeInsets.only(top: 220),
             child: Container(
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
           ),
              
            ],
           ),
      ),
    );
  }
}