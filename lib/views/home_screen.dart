import 'package:flutter/material.dart';
import 'package:talabat_app/views/login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Colors.deepOrange[50],
            child: Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivering to ",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Select location",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down,
                            color: Colors.deepOrange),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hey there!",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "log in or create an account for\na faster ordering experience.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: Text("log in "),
                  ),
                  SizedBox(height: 12)
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Food",
                        style: TextStyle(fontSize: 18),
                      ),
                      Image.asset(
                        "assets/burger.png",
                        width: 80,
                        height: 80,
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey[200],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Groceries",
                        style: TextStyle(fontSize: 14),
                      ),
                      Image.asset(
                        "assets/groceries.jpg",
                        width: 62,
                        height: 62,
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey[200],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Shortcuts",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(right: 250.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.deepOrange[50],
            ),
            height: 80,
            width: 80,
            child: Icon(
              Icons.notes,
              color: Colors.orange,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "    Past \n   orders",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                //  padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ()));
                },
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.list_alt_rounded),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.local_offer_outlined),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.shopping_basket_outlined),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.person),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
