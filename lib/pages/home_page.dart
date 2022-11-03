import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  num days = 20;
  String app_name = "FoodMall";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text("Hello! Welcome to $app_name ! token no: $days"),
      ),
      drawer: MyDrawer(),
    );
  }
}
