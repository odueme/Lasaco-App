import 'package:algora_design/marine_insurance.dart';
import 'package:algora_design/motor_insurance.dart';
import 'package:algora_design/travel_insurance.dart';
import 'package:flutter/material.dart';


class Policies extends StatelessWidget {
  const Policies({super.key});

  void onMotorInsuranceClick(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const MotorInsurance()));
  }

  void onTravelInsuranceClick(BuildContext context) {
   Navigator.push(context, MaterialPageRoute(builder: (ctx) => const TravelInsurance()));
  }

  void onMarineInsuranceClick(BuildContext context) {
   Navigator.push(context, MaterialPageRoute(builder: (ctx) => const MarineInsurance()));
  }

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
                    Navigator.pushNamed(context, '/dashboard');
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
                const Text('My Policies', style: TextStyle(fontSize: 16)),
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
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () => onMotorInsuranceClick(context),
              child: Container(
                height: 100,
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
                            'Motor Insurance',
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
                              Text('Policy number',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                              Text(
                                'N1234567810',
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
                                    Text('Next premium date',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        )),
                                    Text(
                                      'Jun 20,2024',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () => onTravelInsuranceClick(context),
              child: Container(
                height: 100,
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
                              Text('Policy number',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                              Text(
                                'N1234567810',
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
                                    Text('Next premium date',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        )),
                                    Text(
                                      'Jun 20,2024',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () => onMarineInsuranceClick(context),
              child: Container(
                height: 100,
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
                            'Marine Insurance',
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
                              Text('Policy number',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                              Text(
                                'N1234567810',
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
                                    Text('Next premium date',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        )),
                                    Text(
                                      'Jun 20,2024',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
