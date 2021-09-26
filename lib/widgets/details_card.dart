import 'package:flutter/material.dart';
import 'package:uidesign02/color.dart';
import 'package:uidesign02/model/model.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Model model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.19),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.name,
            style: TextStyle(
              color: white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Text(
            model.description,
            maxLines: 4,
            style: TextStyle(
              color: white.withOpacity(0.7),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Follow',
                      style: TextStyle(
                        color: white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: white,
                      child: Icon(
                        Icons.add,
                        color: black,
                        size: 15,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
