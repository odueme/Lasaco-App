
import 'package:algora_design/password.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: HomePage(),

      ),
      
      routes: {
    
        '/insurance': (context) => const InsurancePage(),
        '/signup': (context) => const SignUp(),
        '/password': (context) => const Password()
      },
  
    );
  }
}


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Padding(padding: const EdgeInsets.only(top: 120),
      child: SizedBox(
        width: 320,
      child: Column(
        children: [
        const  Image(image: AssetImage('Images/Insurance_pic.png')),
         const SizedBox(height: 50.0,),
         const Text('General Insurance', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
         const SizedBox(height: 20.0),
         const Text(
            'Get comprehensive coverage and financial protection for your assets and live with peace of mind.', 
            style: TextStyle(fontSize: 16, color:Color(0xFF7E848D), height: 1.5),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
           TextButton(
            style: TextButton.styleFrom(
              backgroundColor:  const Color(0xFF01B4CB),
              minimumSize: const Size(300, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
              onPressed:() {
                Navigator.pushNamed(context, '/insurance');
              }, 
            child: const Text('Next', style: TextStyle(color: Colors.white, fontSize: 20),)
           )
        ],
      ),
      ),
      ),
  
    );
  }
}

class InsurancePage extends StatelessWidget{
   const InsurancePage({super.key});

  @override
  Widget build(BuildContext context){
       
     return Scaffold(
      body: Center(
        child: Padding(padding: const EdgeInsets.only(top: 90),
      child: SizedBox(
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
      ),
      ),
  
      ),
     );
  }
}

    class SignUp extends StatefulWidget{
      const SignUp({super.key});
      
      @override
        State<SignUp> createState() => _SignUpState();
    }

  

    class _SignUpState extends State<SignUp>{
      bool agree = false;
      bool signupPressed = false;

     

      @override
      Widget build(BuildContext context){
        return Scaffold(
         body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
          child: Material(
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [   
                TextButton(
                  onPressed: (){
                     Navigator.pushNamed(context, '/insurance');
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
       
      
                const SizedBox(width: 140),
                 
                  RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Have an account? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(color: Color(0xFF01B4CB), decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                  ),
              ],
            ),
            const SizedBox(height: 60.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              const Text(

             'Sign Up', 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30), 
              ),
              const SizedBox(height: 30.0),
              Center(
              child: SizedBox( 
              width: 300,
              child: TextFormField(
              decoration: const InputDecoration(
              labelText: 'First name',
              suffixIcon: Padding(
                 padding: EdgeInsets.only(top: 30.0, left: 15), 
                 child: Icon(Icons.person_outlined, color: Color(0xFFA2A2A7)),
                ),
             enabledBorder: UnderlineInputBorder(
             borderSide: BorderSide(color: Color(0xFFA2A2A7)),
            ),
              focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFA2A2A7)),
            ),
              ),
            ),
              ),
              ),
                const SizedBox(height: 20.0),

              
             Center(
              child: SizedBox( 
              width: 300,
              child: TextFormField(
              decoration: const InputDecoration(
              labelText: 'Last name',
              suffixIcon: Padding(
                 padding: EdgeInsets.only(top: 30.0, left: 15), 
                 child: Icon(Icons.person_outlined, color: Color(0xFFA2A2A7)),
                ),
             enabledBorder: UnderlineInputBorder(
             borderSide: BorderSide(color: Color(0xFFA2A2A7)),
            ),
              focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFA2A2A7)),
            ),
              ),
            ),
          
              ),
              ),

                const SizedBox(height: 20.0),
           

              Center(
              child: SizedBox( 
              width: 300,
              child: TextFormField(
              decoration: const InputDecoration(
              labelText: 'Phone Number',
              suffixIcon: Padding(
                 padding: EdgeInsets.only(top: 30.0, left: 15), 
                 child: Icon(Icons.phone_outlined, color: Color(0xFFA2A2A7)),
                ),
             enabledBorder: UnderlineInputBorder(
             borderSide: BorderSide(color: Color(0xFFA2A2A7)),
            ),
              focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFA2A2A7)),
            ),
              ),
            ),
              ),
              ),

              const SizedBox(height:20),

                 Center(
              child: SizedBox( 
              width: 300,
              child: TextFormField(
              decoration: const InputDecoration(
              labelText: 'Email Address',
              suffixIcon: Padding(
                 padding: EdgeInsets.only(top: 30.0, left: 15), 
                 child: Icon(Icons.mail_outlined, color: Color(0xFFA2A2A7)),
                ),
             enabledBorder: UnderlineInputBorder(
             borderSide: BorderSide(color: Color(0xFFA2A2A7)),
            ),
              focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFA2A2A7)),
            ),
              ),
            ),
          
              ),


              ),

              const SizedBox(height: 40),
              Row(
                
               children: [
               Checkbox(value: agree, onChanged: (value){
                setState(() {
                  agree = value ?? false;
                });
               }),
              Expanded(
              child:  RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "I agree to company's",
                            style: TextStyle(color: Colors.black),
                          ),
                        TextSpan(
                            text: ' terms & conditions and privacy & data protection policy. ',
                            style: TextStyle(color: Color(0xFF01B4CB)),
                          ),

                          
                          // TextSpan( 
                          //   text:  agree? '' : 'Please accept conditons',
                          //   style: const TextStyle(color: Colors.red)
                          // ),
                        ],
                      ),
                  ),
                  
                   ),
                  
               ]
              ),
            
                 Text(signupPressed&&!agree? 'Please accept condition' : '', style: const TextStyle(color: Colors.red)),

             const SizedBox(height: 40),

              TextButton(
            style: TextButton.styleFrom(
              backgroundColor:  const Color(0xFF01B4CB),
              minimumSize: const Size(320, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
              onPressed:() {
                
                setState(() {
                  signupPressed = true;
                });
                if (agree) {
                          Navigator.pushNamed(context, '/password');
                  }
                
              }, 
            child: const Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 20),)
           )

       
            ],
        
            ),
            ),
            ]
          ),
          ),
          ),
        );
      }
    }
 
