import 'package:assessmentoruphone1/pages/Login/Widgets.dart';
import 'package:assessmentoruphone1/pages/Login/otpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final TextEditingController _phoneController = TextEditingController();

    String? _verificationId;
    // Function to send OTP to phone number
    Future<void> _sendOtp() async {
      final phone = _phoneController.text.trim();
      await _auth.verifyPhoneNumber(
        phoneNumber: phone,
        //timeout: Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Auto-retrieval or instant verification
          await _auth.signInWithCredential(credential);
          print('Phone number automatically verified');
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Verification failed: ${e.message}');
        },
        codeSent: (String verificationId, int? resendToken) {
          setState(() {
            _verificationId = verificationId;
          });
          // Navigate to OTP screen to enter the code
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpPage(verificationId: verificationId),
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }

    // Function to validate phone number
    String? validatePhone(String value) {
      if (value.isEmpty) {
        return 'Phone number is required';
      }
      if (value.length < 10) {
        return 'Enter a valid 10-digit phone number';
      }
      return null;
    }


    return Scaffold(
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.only(top: 118.0,left: 16,right: 16),
          child: Column(
            children: [

              RewellWidgets(subText: "sign in to continue",),
              SizedBox(height: 20,),

              ReTextFielde(enterController: _phoneController,
                  keyboardTypee:TextInputType.phone ,
                  HintText: "Enter Phone Number",
                  iconName: Icons.phone
              ),


              // Terms and Conditions Checkbox
              // Terms and Conditions Checkbox with green color when checked
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                    activeColor: Colors.green, // Green color when checked
                  ),
                  Text(
                    'I accept the Terms and Conditions',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Submit Button (enabled only if the checkbox is checked)
              ElevatedButton(
                onPressed: _sendOtp
                //     ? () {
                //   String? phone = _phoneController.text;
                //   String? validationResult = validatePhone(phone);
                //
                //   if (validationResult != null) {
                //     // Show error message if phone number is invalid
                //     ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(content: Text(validationResult)));
                //     print('Phone number is Invalid');
                //
                //   } else {
                //     _sendOtp;
                //     // Success if phone number is valid
                //     ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(content: Text('Phone number is valid')));
                //
                //     print('Phone number is valid');
                //
                //   }
                // }
                    , // Button is disabled if checkbox is not checked
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), backgroundColor: _isChecked ? Colors.blue : Colors.grey,
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
