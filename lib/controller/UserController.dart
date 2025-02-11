import 'dart:convert';

import 'package:assessmentoruphone1/pages/homepage/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserController {
   //final paseUrl =" http://localhost:3000/users";

   // Function to fetch user data from the API
   Future<Map<String, String>> fetchUserData() async {
      final response = await http.get(Uri.parse('http://localhost:3000/users/1'));

      if (response.statusCode == 200) {
         // If the server returns a 200 OK response, parse the JSON
         var jsonData = json.decode(response.body);

         // Extract both 'name' and 'number' from the response
         String name = jsonData['name'];
         String number = jsonData['number']; // Assuming 'phone' is the number field in the API

         // Return a map with name and number
         return {'name': name, 'number': number};
      } else {
         // If the server did not return a 200 OK response, throw an error
         throw Exception('Failed to load data');
      }
   }

   Future<void> postApi(String name,String number ,context) async {
      // URL for the API
      final url = Uri.parse("http://localhost:3000/users");

      // Create the data as a Map
      // final Map<String, String> data = {
      //   'title': title,
      //   'content': content,
      // };
      final data = {
         'name': name,
        // 'number': number
      };

      // Send the POST request with JSON-encoded body
      final response = await http.post(
         Uri.parse("http://localhost:3000/users"),
         headers: {
            'Content-Type': 'application/json',  // Set header to inform server that we're sending JSON
         },
         body: json.encode(data),  // JSON encode the data
      );

      // Check the response
      if (response.statusCode == 200 || response.statusCode == 201) {
         Navigator.pushReplacement(
            context,
            MaterialPageRoute(
               builder: (context) => HomePage(),
            ),
         );
         print('Post created successfully: ${response.body}');
      } else {
        print('Failed to create post. Status code: ${response.statusCode}');
       //  print('Response: ${response.body}');
      }
   }

}
