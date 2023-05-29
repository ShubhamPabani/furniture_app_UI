import 'package:flutter/material.dart';
import 'package:furniture_ui/core/space.dart';
import 'package:furniture_ui/core/text_style.dart';
import 'package:furniture_ui/model/model.dart';
import 'package:furniture_ui/page/details_page.dart';

class ItemCard extends StatelessWidget {
  final Model model;
  const ItemCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => DetailsPage(model: model)));
      },
      child: Container(
        height: 140.0,
        margin: EdgeInsets.only(bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 140.0,
              child: Image.asset(model.image[0]),
            ),
            Container(
              width: 180.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: itemCardHeading,
                  ),
                  SpaceVH(height: 8.0),
                  Text(
                    model.description,
                    maxLines: 3,
                    style: itemCardDes,
                  ),
                  SpaceVH(height: 10.0),
                  Text(
                    model.price,
                    style: itemCardPrice,
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              splashColor: Colors.red,  // Favorite icon will splash red when tap
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}