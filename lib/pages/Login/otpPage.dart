import 'package:assessmentoruphone1/pages/Login/Widgets.dart';
import 'package:assessmentoruphone1/pages/Login/namePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  final String verificationId;
  const OtpPage({super.key,required this.verificationId});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _otpController = TextEditingController();
    final FirebaseAuth _auth = FirebaseAuth.instance;

    // Function to verify the OTP
    Future<void> _verifyOtp() async {
      print("User otp checkd");
      String otp = _otpController.text.trim();
      PhoneAuthCredential credential = PhoneAuthProvider.credential(

        verificationId: widget.verificationId,
        smsCode: otp,

      );

      try {
        print("User otp checked credential in try");
        UserCredential userCredential = await _auth.signInWithCredential(credential);
        print("User ID: ${userCredential.user?.uid}");
        print("User otp checkd");

        // Navigate to the home screen with the user ID
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => NamePage(),
          ),
        );
      } catch (e) {
        print('Failed to verify OTP: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid OTP!')),
        );
      }
    }

    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:208.0,left: 16,right: 16),
            child: Column(
                    children: [
            RewellWidgets(subText: "Enter Otp"),

            SizedBox(height: 30,),

            ReTextFielde(
                enterController: _otpController,
                keyboardTypee: TextInputType.phone,
                HintText: "Enter otp",
                iconName: Icons.password
            ),

            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              print('otp ckecking please vete ');
              _verifyOtp();
              print("otp secusset full");
            },
                child:Text("Submit"))


                    ],

                  ),
          )),
    );
  }
}
