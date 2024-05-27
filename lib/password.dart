import 'package:flutter/material.dart';
import 'package:pin_plus_keyboard/package/controllers/pin_input_controller.dart';
import 'package:pin_plus_keyboard/pin_plus_keyboard.dart';



class Password extends StatefulWidget {
  const Password({super.key});
  @override
  State<Password> createState(){
    return _Password();
  }
}


class _Password extends State<Password>{
  final pinInputController = PinInputController(length: 6);
    
  @override
  Widget build(context){
    final size = MediaQuery.of(context).size;
    return  Scaffold( 
      body: Container(
      padding: const EdgeInsets.only(top: 40),
      child: Column (
       children: [ Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [   
                TextButton(
                  onPressed: (){
                     Navigator.pushNamed(context, '/signup');
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
                            text: 'New User? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: Color(0xFF01B4CB), decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                  ),
              ],
            ),

            const SizedBox(height: 60),
           const Text('Enter password', style: TextStyle(fontSize: 15.0)),
          const SizedBox(height:40.0),
      
      PinPlusKeyBoardPackage(
    keyboardButtonShape: KeyboardButtonShape.circular,
    inputShape: InputShape.circular,
    keyboardMaxWidth: 90,
    inputHasBorder: false,
    inputFillColor: Colors.grey,
    inputElevation: 1,
    buttonFillColor: Colors.white,
    btnTextColor: const Color(0xFF606060),
    spacing: size.height * 0.06,
    pinInputController: pinInputController,
    buttonBorderColor: Colors.white,
    isInputHidden: true,
    btnHasBorder: false,
    keyboardFontSize: 35,
    keyboardBtnSize: 70,
    inputHiddenColor: const Color(0xFF01B4CB),
    inputHeight: 13,
    inputsMaxWidth: 60,
    inputShadowColor: Colors.white,
    


    
    
    
    
    
    onSubmit: () {
        /// ignore: avoid_print
        print("Text is : " + pinInputController.text);
            },
           
             keyboardFontFamily: '',
      ),
       ]
      ),
      ),
);
  }
}



  
   