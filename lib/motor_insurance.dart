import 'package:flutter/material.dart';

class MotorInsurance extends StatelessWidget{
  const MotorInsurance({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Container(
                  height: 100,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                     blurRadius: 15,
                     offset: const Offset(0, 3), 
                    ),
                    ],
                  ),
                  child: const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        
                        Row(
                          
                          children: [
                            Image(image: AssetImage('Images/motor.png')),
                            SizedBox(width: 8),
                            Text('Motor Insurance', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:  Color(0xFF0D6590)))
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Policy number', style: TextStyle(fontSize: 12, color: Colors.grey)),
                                 Text('N1234567810'),
                               ],
                             ),
                             Expanded(
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Next premium date', style: TextStyle(fontSize: 12, color: Colors.grey)),
                                         Text('Jun 20,2024')
                                    ],
                                  ),
                                  
                                ],
                               ),
                             )
                          ]
                         
                        ),
                    
                       
                      ],
                    ),
                  ),
                ),
      ),
    );
  }
}