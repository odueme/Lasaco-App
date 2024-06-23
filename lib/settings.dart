

import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  const Settings({super.key});
  @override
  Widget build(BuildContext context){
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
                const Text('Settings', style: TextStyle(fontSize: 16)),
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
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow:[ BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                   offset: const Offset(0, 3),
                )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  children: [
                   const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Change Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                    const SizedBox(height: 10,),

                    const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: 'Old Password',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          
                              borderSide: BorderSide(
                                  color: Colors.grey
                                  ),
                            ),
                        
                        
                      ),
                    ),
                        const SizedBox(height: 10),

                     const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: 'New Password',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          
                              borderSide: BorderSide(
                                  color: Colors.grey
                                  ),
                            ),
                        
                        
                      ),
                    ),

                    const SizedBox(height: 30),

                        TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(320, 48),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        
                      },
                      child: const Text(
                        'Update Password',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ]
                  
                ),
              ),
            ),
          )


        ],
      )
    );
  }
}