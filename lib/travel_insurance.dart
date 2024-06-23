import 'package:flutter/material.dart';


class TravelInsurance extends StatelessWidget {
  const TravelInsurance({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/policies');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFF6F6F6),
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 15,
                    color: Color(0xFF01B4CB),
                  ),
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.notifications),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Container(
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
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                   Row(
                      children: [
                        Image(image: AssetImage('Images/motor.png')),
                        SizedBox(width: 8),
                        Text(
                          'Travel Insurance',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D6590),
                          ),
                        ),
                      ],
                    ),
                   SizedBox(height: 10),
                   Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Full name',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                )),
                            Text(
                              'Joseph Adeniyi',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Phone',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '0902388334',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'joseph.adeniyi@gmail.com',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date of birth',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'May 13, 1982',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Policy Details',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D6590),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 20),
                    Row(
                      
                      children: [
                        Row(
                          
                          children: [
                           Text(
                              'Policy number',
                                 style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                 ),
                              ),

                              SizedBox(width: 5,),

                      Text(
                      'N123456789',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      ),

                                       
                           
                          ],
                        ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                             Text(
                                'Start Date',
                                   style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                   ),
                                ),
                        
                                
                        
                        Text(
                        'March 21, 2024',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        ),
                        
                                         
                             
                            ],
                          ),
                      ),

                      

                      
                      ]
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                            Row(
                          
                          children: [
                           Text(
                              'Poolicy Terms',
                                 style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                 ),
                              ),

                              SizedBox(width: 5,),

                      Text(
                      '1 year',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      ),

                                       
                           
                          ],
                        ),

                         Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                             Text(
                                'End Date',
                                   style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                   ),
                                ),
                        
                                
                        
                        Text(
                        'March 24, 2025',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        ),
                        
                                         
                             
                            ],
                          ),
                      ),

                        ],
                      ),
                      SizedBox(height: 10,),

                        Row(
                        children: [
                            Row(
                          
                          children: [
                           Text(
                              'Payment Plan',
                                 style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                 ),
                              ),

                              SizedBox(width: 5,),

                      Text(
                      'Monthly',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      ),

                                       
                           
                          ],
                        ),

                         Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                             Text(
                                'Policy number',
                                   style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                   ),
                                ),
                        
                                
                        
                        Text(
                        'N123456789',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        ),
                        
                                         
                             
                            ],
                          ),
                      ),

                        ],
                      ),
                      

                        Row(
                        children: [
                            Row(
                          
                          children: [
                           Text(
                              'Policy number',
                                 style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                 ),
                              ),

                              SizedBox(width: 5,),

                      Text(
                      'N123456789',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      ),

                                       
                           
                          ],
                        ),


                        ],
                      ),

                   
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
