import 'package:assessmentoruphone1/controller/UserController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    UserController userController = UserController();

    final List<String> options = [
      'Sell User Phone',
      'Buy User Phone',
      'Compare Price',
      'My Profile',
      'My Listings',
      'Service Register Your Store',
      'Get the App',
    ];

    final List<String> images = [
      'assets/logoorcphone.jpg',
      'assets/logoorcphone.jpg',
      'assets/logoorcphone.jpg',
      'assets/logoorcphone.jpg',
      'assets/logoorcphone.jpg',
      'assets/logoorcphone.jpg',
    ];

    // List for vertical ListView with icons and text
    final List<Map<String, dynamic>> iconTextList = [
      {'icon': Icons.shopping_cart, 'text': 'Buy Used Phone'},
      {'icon': Icons.phone_android, 'text': 'Sell Used Phone'},
      {'icon': Icons.compare_arrows, 'text': 'Compare Price'},
      {'icon': Icons.person, 'text': 'My Profile'},
      {'icon': Icons.list, 'text': 'My Listings'},
      {'icon': Icons.store, 'text': 'Open Store'},
      {'icon': Icons.build, 'text': 'Service'},
    ];

    final List<Map<String, dynamic>> phoneList = [
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBELRFruidNLvoqqj3tnUd-O-2NLbD1PdmbQ&s',
        'name': 'iPhone 13 Pro',
        'company': 'Apple',
        'ram_rom': '8GB RAM / 256GB ROM',
        'discount': '10% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHnHR0HHImCgmucOR00U0ZN7VeoDxwlGU5OA&s',
        'name': 'iPhone 12',
        'company': 'Apple',
        'ram_rom': '6GB RAM / 128GB ROM',
        'discount': '15% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcyAM332dYAQgE3GZCZiq8zof-8C0mNJnfaw&s',
        'name': 'Samsung S21',
        'company': 'Samsung',
        'ram_rom': '8GB RAM / 128GB ROM',
        'discount': '20% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8fVGu1gUmAIqPK7g4pWTMPOXO-8EvnGJ2hQ&s',
        'name': 'OnePlus 9',
        'company': 'OnePlus',
        'ram_rom': '12GB RAM / 256GB ROM',
        'discount': '5% OFF',
      },   {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBELRFruidNLvoqqj3tnUd-O-2NLbD1PdmbQ&s',
        'name': 'iPhone 13 Pro',
        'company': 'Apple',
        'ram_rom': '8GB RAM / 256GB ROM',
        'discount': '10% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHnHR0HHImCgmucOR00U0ZN7VeoDxwlGU5OA&s',
        'name': 'iPhone 12',
        'company': 'Apple',
        'ram_rom': '6GB RAM / 128GB ROM',
        'discount': '15% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcyAM332dYAQgE3GZCZiq8zof-8C0mNJnfaw&s',
        'name': 'Samsung S21',
        'company': 'Samsung',
        'ram_rom': '8GB RAM / 128GB ROM',
        'discount': '20% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8fVGu1gUmAIqPK7g4pWTMPOXO-8EvnGJ2hQ&s',
        'name': 'OnePlus 9',
        'company': 'OnePlus',
        'ram_rom': '12GB RAM / 256GB ROM',
        'discount': '5% OFF',
      },  {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBELRFruidNLvoqqj3tnUd-O-2NLbD1PdmbQ&s',
        'name': 'iPhone 13 Pro',
        'company': 'Apple',
        'ram_rom': '8GB RAM / 256GB ROM',
        'discount': '10% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHnHR0HHImCgmucOR00U0ZN7VeoDxwlGU5OA&s',
        'name': 'iPhone 12',
        'company': 'Apple',
        'ram_rom': '6GB RAM / 128GB ROM',
        'discount': '15% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcyAM332dYAQgE3GZCZiq8zof-8C0mNJnfaw&s',
        'name': 'Samsung S21',
        'company': 'Samsung',
        'ram_rom': '8GB RAM / 128GB ROM',
        'discount': '20% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8fVGu1gUmAIqPK7g4pWTMPOXO-8EvnGJ2hQ&s',
        'name': 'OnePlus 9',
        'company': 'OnePlus',
        'ram_rom': '12GB RAM / 256GB ROM',
        'discount': '5% OFF',
      },   {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBELRFruidNLvoqqj3tnUd-O-2NLbD1PdmbQ&s',
        'name': 'iPhone 13 Pro',
        'company': 'Apple',
        'ram_rom': '8GB RAM / 256GB ROM',
        'discount': '10% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHnHR0HHImCgmucOR00U0ZN7VeoDxwlGU5OA&s',
        'name': 'iPhone 12',
        'company': 'Apple',
        'ram_rom': '6GB RAM / 128GB ROM',
        'discount': '15% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcyAM332dYAQgE3GZCZiq8zof-8C0mNJnfaw&s',
        'name': 'Samsung S21',
        'company': 'Samsung',
        'ram_rom': '8GB RAM / 128GB ROM',
        'discount': '20% OFF',
      },
      {
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8fVGu1gUmAIqPK7g4pWTMPOXO-8EvnGJ2hQ&s',
        'name': 'OnePlus 9',
        'company': 'OnePlus',
        'ram_rom': '12GB RAM / 256GB ROM',
        'discount': '5% OFF',
      },


    ];


    // Declare the variable to track if the menu is open or not

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();

          },
          icon: Icon(Icons.menu, color: Colors.black),
        ),
        title: Image.asset("assets/logoorcphone.jpg",width: 50,),

        actions: [
          Text("india"),
          SizedBox(width: 5,),
          Icon(Icons.location_on),
          SizedBox(width: 5,),
          Container(

            height: 30,width: 60,
            decoration: BoxDecoration(
                color: Colors.yellow,
              borderRadius: BorderRadius.circular(5)
            ),
            child: Center(
                child: Text("Login",textAlign: TextAlign.center,)
            ),
          ),
          SizedBox(width: 15,),


        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header with Logo and Close Button
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow.shade300,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                      width: 50,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Image.asset('assets/logoorcphone.jpg',fit: BoxFit.cover,)),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop();  // Close the drawer
                    },
                  ),
                ],
              ),
            ),
      FutureBuilder<Map<String, String>>(
        // FutureBuilder ka use karke asynchronous API call handle karna
        future: userController.fetchUserData(),  // API call
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); // Loading indicator
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));  // Error case
          } else if (snapshot.hasData) {
            // Agar data aata hai, to data ko display karenge
            var userData = snapshot.data!;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Name: ${userData['name']}', // Name ko display karna
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Number: ${userData['number']}', // Number ko display karna
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('No data available.'));
          }
        },
      ),


    // User Name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('User Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),

            // Row 1 (3 containers)


            // Buttons in Drawer
            ...options.map((option) {
              return ListTile(
                title: Text(option),
                onTap: () {
                  // Handle navigation or actions here
                  Navigator.of(context).pop();  // Close the drawer when an option is clicked
                },
              );
            }).toList(),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildDrawerItem(Icons.shopping_cart, 'How to Buy'),
                  _buildDrawerItem(Icons.phone_android, 'How to Buy'),
                  _buildDrawerItem(Icons.store, 'How to Buy'),
                ],
              ),
            ),

            // Row 2 (3 containers)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildDrawerItem(Icons.add_shopping_cart, 'How to Buy'),
                  _buildDrawerItem(Icons.delivery_dining, 'How to Buy'),
                  _buildDrawerItem(Icons.money, 'How to Buy'),
                ],
              ),
            ),
          ],
        ),

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1,),
                 borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      //SizedBox(width: 10,),
                      Icon(Icons.search,color: Colors.yellow,),
                      SizedBox(width: 20,),
                      Text("Search Phone"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("|",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      SizedBox(width: 3,),
                      Icon(CupertinoIcons.mic),
                      SizedBox(width: 10,)
                    ],
                  )

                ],
              ),
            ),

            // Horizontal ListView
            Container(
              height: 100, // Adjust height as per your need
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Chip(
                      label: Text(options[index]),
                      backgroundColor: Colors.yellow,
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  );
                },
              ),
            ),

            Container(
              height: 200, // Adjust height as per your need
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Chip(
                      label: Image.asset(images[index],fit: BoxFit.cover,),

                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("What's on your mind?",style: TextStyle(
                  fontSize: 21,fontWeight: FontWeight.w400
                ),),
              ],
            ),
            SizedBox(height: 10,),

             Container(
               height: 100,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                itemCount: iconTextList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Column(
                      children: [
                        Icon(
                          iconTextList[index]['icon'],
                          size: 40,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(height: 8),
                        Text(
                          iconTextList[index]['text'],
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
               ),
             ),

            Container(
              height: 500,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7, // Image height and width ratio
                ),
                itemCount: phoneList.length,
                itemBuilder: (context, index) {
                  final phone = phoneList[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          phone['image'],
                          height: 100, // Image height
                          width: 70, // Image width
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text(
                          phone['name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          phone['company'],
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Text(
                          phone['ram_rom'],
                          style: TextStyle(fontSize: 14),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              phone['discount'],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),



          ]
        ),
      ),


    );
  }
}
Widget _buildDrawerItem(IconData icon, String text) {
  return Container(
    width: 80,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.transparent),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blueAccent),
        SizedBox(height: 5),
        Text(text, style: TextStyle(fontSize: 10), textAlign: TextAlign.center),
      ],
    ),
  );
}

