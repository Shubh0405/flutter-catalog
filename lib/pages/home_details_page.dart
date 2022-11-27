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
      backgroundColor: context.theme.cardColor,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: context.theme.canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .bold
                .xl2
                .textStyle(context.theme.textTheme.bodyText1)
                .make(),
            ElevatedButton(
                    onPressed: (() {}),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.primaryColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add to cart".text.make())
                .wh(120, 45),
          ],
        ).p32(),
      ),
      body: Column(children: [
        Hero(
                tag: Key(catalog.id.toString()),
                child: Center(
                    child: Container(
                        padding: EdgeInsets.zero,
                        child: Image.network(catalog.image))))
            .h32(context)
            .p32(),
        Expanded(
            child: VxArc(
                height: 35.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  color: context.theme.canvasColor,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4.bold
                        .color(context.theme.secondaryHeaderColor)
                        .make(),
                    catalog.desc.text.xl
                        .textStyle(context.captionStyle)
                        .color(context.theme.secondaryHeaderColor)
                        .make(),
                  ]).py64(),
                )))
      ]),
    );
  }
}
