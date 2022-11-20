// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: MyThemes.creamColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl2.red800.make(),
            ElevatedButton(
                    onPressed: (() {}),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyThemes.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy".text.lg.make())
                .wh(80, 40),
          ],
        ).p32(),
      ),
      body: Column(children: [
        Hero(
                tag: Key(catalog.id.toString()),
                child: Center(child: Image.network(catalog.image)))
            .h32(context)
            .p32(),
        Expanded(
            child: VxArc(
                height: 35.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  color: MyThemes.creamColor,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4.bold
                        .color(MyThemes.darkBluishColor)
                        .make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                  ]).py64(),
                )))
      ]),
    );
  }
}
