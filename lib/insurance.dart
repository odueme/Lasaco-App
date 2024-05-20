 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Insurance extends StatefulWidget{
  const Insurance({super.key});
  @override
  State<Insurance> createState(){
    return _Insurance(); 
  }
}


    class _Insurance extends State<Insurance>{
      @override 
      Widget build(context){
        return SizedBox(
        width: 320,
      child: Column(
        children: [
        const  Image(image: AssetImage('Images/Valentine_pic.png')),
         const SizedBox(height: 40.0,),
         const Text('Life Insurance', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
         const SizedBox(height: 15.0),
         const Text(
            "Life Insurance Secure your loved ones' future with reliable life insurance. Protect what matters most to you and yours.", 
            style: TextStyle(fontSize: 16, color:Color(0xFF7E848D), height: 1.3),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
           TextButton(
            style: TextButton.styleFrom(
              backgroundColor:  const Color(0xFF01B4CB),
              minimumSize: const Size(300, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
              onPressed:() {
                Navigator.pushNamed(context, '/signup');
              }, 
            child: const Text('Next', style: TextStyle(color: Colors.white, fontSize: 20),)
           )
        ],
      ),
      );
      }
    }
 