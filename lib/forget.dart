import 'package:flutter/material.dart';
import 'package:registration_form/services.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "Forget",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: AlignmentGeometry.center,
                child: Text("Type your email to get reset link"),
              ),
              SizedBox(height: 50),

              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text("Email", style: TextStyle(fontSize: 20)),
              ),
              TextField(controller: emailcontroller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),SizedBox(height: 20,),
              SizedBox(height: 55,width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    forget(email: emailcontroller.text, context: context);
                  },
                  child: Text("Send  link", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM1UliWI1gbC9WGns4_QA5TNObtelBpHm4jQ&s",
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
