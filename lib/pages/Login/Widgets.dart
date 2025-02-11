import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RewellWidgets extends StatelessWidget {
  String subText;
   RewellWidgets({super.key,required this.subText});

  @override
  Widget build(BuildContext context) {

    // To track whether the checkbox is selected

    return Column(
      children: [
        SizedBox(
            height: 80,width: 80,
            child: Image.asset('assets/logoorcphone.jpg',
              fit: BoxFit.cover,)
        ),
        SizedBox(height: 20,),
        Text("WellCome",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21
        ),),
        SizedBox(height: 5,),
          Text(subText),

        SizedBox(height: 30,),
      

      

      ],
    );
  }
}


class ReTextFielde extends StatelessWidget {
  final TextEditingController enterController; // Corrected type to TextEditingController
  final IconData iconName; // Corrected type to IconData
  final TextInputType keyboardTypee; // Corrected type to TextInputType
  String HintText ;
  
   ReTextFielde({super.key,
     required this.enterController,
     required this.keyboardTypee,
    required this.HintText,
   required this.iconName
   });

  @override
  Widget build(BuildContext context) {
    return   TextField(
      controller: enterController,
      keyboardType: keyboardTypee,

      decoration: InputDecoration(
        labelText: HintText,
        prefixIcon: Icon(iconName),
        border: OutlineInputBorder(),
        hintText: HintText ,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
      ),
    );
  }
}

