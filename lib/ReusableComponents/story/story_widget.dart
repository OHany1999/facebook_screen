import 'package:assignment2_design/ReusableComponents/story/story_model.dart';
import 'package:flutter/material.dart';

import '../default_CircleAvatar.dart';

class StoryWidget extends StatelessWidget {
  StoryModel storyModel;
  StoryWidget(this.storyModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.0, top: 15.0,),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              storyModel.image,
              fit: BoxFit.cover,
              height: 150.0,
            ),
            DefaultCircleIcon(
                size: 15.0,
                iconColor: Colors.white,
                icon: Icons.person,
                backgroundColor: Colors.blue),
            Container(
              padding: EdgeInsets.only(top: 115.0, left: 13.0),
              child: Text(
                storyModel.text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
