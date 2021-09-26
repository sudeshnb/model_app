import 'package:flutter/material.dart';
import 'package:uidesign02/color.dart';
import 'package:uidesign02/model/model.dart';
import 'package:uidesign02/widgets/custom_app_bar.dart';
import 'package:uidesign02/widgets/populer_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(height: 5),
              Text(
                'Week in Paris',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: purple,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '2021 Fashion show in Paris',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: black.withOpacity(0.8),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: black.withOpacity(0.8),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings_input_component_outlined,
                      ))
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  tabBarButtons(
                      text: 'Recommended', isClick: true, onTap: () {}),
                  tabBarButtons(text: 'New Models', onTap: () {}),
                  tabBarButtons(text: '2021 show', onTap: () {}),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 250,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: modelData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (builder, index) {
                      final model = modelData[index];
                      return PopulerCard(
                        model: model,
                      );
                    }),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: photos.length,
                    itemBuilder: (builder, index) {
                      final photo = photos[index];
                      return Container(
                        height: 200,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: purple,
                          image: DecorationImage(
                            image: AssetImage(photo.image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: black.withOpacity(0.2),
                              offset: Offset(1, 5),
                              spreadRadius: 5,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell tabBarButtons({
    required Function() onTap,
    required String text,
    bool isClick = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: isClick ? purple : black.withOpacity(0.7),
        ),
      ),
    );
  }
}
