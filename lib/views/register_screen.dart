import 'package:flutter/material.dart';

import 'package:talabat_app/views/home_screen.dart';
import 'package:talabat_app/views/login_screen.dart';

import '../services/api_client.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // UserController userController = UserController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10),
        child: Column(
          children: [
            Text(
              "Create an Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: Colors.black45)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/google1.png",
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 30),
                  Text("Continue with Google"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: Colors.black45)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/facebook1.png",
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 30),
                  Text("Continue with facebook"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text("OR"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
                validator: (value) =>
                    value!.isEmpty ? "Email field required" : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
                validator: (value) =>
                    value!.isEmpty ? "Password field required" : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Phone",
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () async {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                child: Text("Create an Account"),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.deepOrange),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
