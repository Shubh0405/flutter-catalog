import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../themes.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.bold
                .color(context.theme.secondaryHeaderColor)
                .make(),
            catalog.desc.text
                .color(context.theme.secondaryHeaderColor)
                .textStyle(context.captionStyle)
                .make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}"
                    .text
                    .color(context.theme.secondaryHeaderColor)
                    .bold
                    .lg
                    .make(),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  HomeDetailPage(catalog: catalog))));
                    }),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.primaryColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "View".text.make()),
              ],
            )
          ],
        ).box.p16.make())
      ],
    )).color(context.theme.cardColor).roundedLg.square(150).make().py8();
  }
}
