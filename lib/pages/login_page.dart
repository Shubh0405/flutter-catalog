import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.theme.canvasColor,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    child: SvgPicture.asset(
                      "assets/images/login_pic.svg",
                    ),
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                  // const SizedBox(
                  //   height: 20.0,
                  // ),
                  Text("Welcome",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: context.theme.secondaryHeaderColor)),
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be Empty!";
                            }
                          },
                          style: TextStyle(
                              color: context.theme.secondaryHeaderColor),
                          decoration: InputDecoration(
                              hintText: "Enter Username",
                              hintStyle: TextStyle(
                                  color: context.theme.secondaryHeaderColor),
                              labelText: "Username",
                              labelStyle: TextStyle(
                                  color: context.theme.secondaryHeaderColor),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color:
                                          context.theme.secondaryHeaderColor)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color:
                                          context.theme.secondaryHeaderColor))),
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be Empty!";
                            } else if (value.length < 6) {
                              return "Password length should be greater than 6";
                            }
                          },
                          style: TextStyle(
                              color: context.theme.secondaryHeaderColor),
                          decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: TextStyle(
                                  color: context.theme.secondaryHeaderColor),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: context.theme.secondaryHeaderColor),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color:
                                          context.theme.secondaryHeaderColor)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color:
                                          context.theme.secondaryHeaderColor))),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    color: context.theme.primaryColor,
                    borderRadius: changebutton
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(8),
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 40,
                        width: changebutton ? 40 : 120,
                        alignment: Alignment.center,
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
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
