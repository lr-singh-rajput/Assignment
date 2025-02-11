import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplaceScreen extends StatelessWidget {
  const SplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WellCome",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21
              ),),
              SizedBox(height: 20,),
              SizedBox(
                  height: 70,width: 70,
                  child: Image.asset('assets/logoorcphone.jpg',
                    fit: BoxFit.cover,)
              ),


            ],
          ),
        ),
      ),
    );
  }
}
