import 'package:flutter/material.dart';
import 'package:uidesign02/Details_page.dart';
import 'package:uidesign02/color.dart';
import 'package:uidesign02/model/model.dart';

class PopulerCard extends StatelessWidget {
  final Model model;
  PopulerCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => DeatilsPage(model: model)));
      },
      child: Container(
        height: 250,
        margin: EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: 140,
              decoration: BoxDecoration(
                  color: purple,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(model.image),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.2),
                      offset: Offset(1, 5),
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Text(
              model.name,
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              model.location,
              style: TextStyle(
                color: black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
