import 'package:flutter/material.dart';

class CircularProgressLoader extends StatelessWidget {
  const CircularProgressLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: SizedBox(
              height: 50.0, width: 50.0, child: CircularProgressIndicator()),
        ));
  }
}
