import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text("Welcome $name",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     },
              //     child: const Text(
              //       "Login",
              //       style: TextStyle(fontSize: 16),
              //     ),
              //     style: TextButton.styleFrom(minimumSize: Size(120, 40)))
              InkWell(
                onTap: () async {
                  setState(() {
                    changebutton = true;
                  });

                  await Future.delayed(const Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 40,
                  width: changebutton ? 40 : 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: changebutton
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(8)),
                  child: changebutton
                      // ignore: prefer_const_constructors
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                ),
              )
            ],
          ),
        ));
  }
}
