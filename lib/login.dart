import 'package:flutter/material.dart';
import 'package:registration_form/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Login to your account",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),SizedBox(height: 30,),
              SizedBox(height: 55,width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have a account?"),
                    GestureDetector(
                      onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Signup(),));
                      },
                      child: Text("Signup",style: TextStyle(fontWeight: FontWeight.bold),))
                  ],
                ),
              
              Image.asset("assets/signup.jpg",height: 300,)
            ],
          ),
        ),
      ),
    );
  }
}
