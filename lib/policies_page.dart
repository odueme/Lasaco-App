import 'package:flutter/material.dart';

class PoliciesPage extends StatelessWidget{
  const PoliciesPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: const Color(0xFF01B4CB),
        child: Stack(
          children:  [
                const Padding(
                      padding: EdgeInsets.only(top: 50, left: 20, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('Images/profile.jpg'),
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Joseph Adeniyi',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                ),
              
            
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    margin: const EdgeInsets.only(top: 130),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                         padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                         child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                      const Text('Active policies', style: TextStyle(fontSize: 16),),
                     const SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                    width: 160,
                    decoration: BoxDecoration(
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
                    child: const Image(image: AssetImage('Images/motor_insurace.png'),height: 80,),
                   
                 ),

             Container(
              width: 160,
              decoration: BoxDecoration(
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
              child: const Image(image: AssetImage('Images/travel_insurance.png'),height: 80,),

                             )
                 ],
               ),

               const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                        width: 160,
                        decoration: BoxDecoration(
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
                        child: const Image(image: AssetImage('Images/marine_insurance.png'),height: 80,),
                       
                     ),
                  ],
                ),
                const SizedBox(height: 30,),
                const Text('Other products', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 20,),
                     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                    width: 160,
                    decoration: BoxDecoration(
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
                    child: const Image(image: AssetImage('Images/personal_incident.png'),height: 80,),
                   
                 ),

             Container(
              width: 160,
              decoration: BoxDecoration(
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
              child: const Image(image: AssetImage('Images/householder_insurance.png'),height: 80,),

                             )
                 ],
               ),

               const SizedBox(height: 10,),

                    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                    width: 160,
                    decoration: BoxDecoration(
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
                    child: const Image(image: AssetImage('Images/Education_Plan.png'),height: 80,),
                   
                 ),

             Container(
              width: 160,
              decoration: BoxDecoration(
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
              child: const Image(image: AssetImage('Images/team_assurance.png'),height: 80,),

                             )
                 ],
               ),

               const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                        width: 160,
                        decoration: BoxDecoration(
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
                        child: const Image(image: AssetImage('Images/investment_plan.png'),height: 80,),
                       
                     ),
                  ],
                ),
                          ],
                         ),
                      ),
                ),
              ),
            )
          ],
        ),
        
      ),
      


    );
  }

}