// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:assignment2_design/ReusableComponents/default_CircleAvatar.dart';
import 'package:assignment2_design/ReusableComponents/post/post_widget.dart';
import 'package:assignment2_design/ReusableComponents/story/story_widget.dart';
import 'package:flutter/material.dart';

import 'ReusableComponents/post/post_model.dart';
import 'ReusableComponents/story/story_model.dart';

class ShowScreen extends StatelessWidget {
  List<StoryModel> story = [
    StoryModel(
      image: 'assets/facebookStory.jpg',
      text: 'owner1',
    ),
    StoryModel(
      image: 'assets/facebookStory.jpg',
      text: 'owner2',
    ),
    StoryModel(
      image: 'assets/facebookStory.jpg',
      text: 'owner3',
    ),
    StoryModel(
      image: 'assets/facebookStory.jpg',
      text: 'owner4',
    ),
    StoryModel(
      image: 'assets/facebookStory.jpg',
      text: 'owner5',
    ),
    StoryModel(
      image: 'assets/facebookStory.jpg',
      text: 'owner6',
    ),
  ];
  List<PostModel>post=[
    PostModel(name: 'Owner1',post: 'My Post1'),
    PostModel(name: 'Owner2',post: 'My Post2'),
    PostModel(name: 'Owner3',post: 'My Post3'),
    PostModel(name: 'Owner4',post: 'My Post4'),
    PostModel(name: 'Owner5',post: 'My Post5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80.0,
        leading: Container(
          padding: EdgeInsets.only(top: 18.0, left: 18.0),
          child: Text(
            'Home',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 150.0,
              child: ListView.builder(
                itemBuilder: (context, index) => StoryWidget(story[index]),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: story.length,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => PostWidget(post[index]),
                separatorBuilder: (context,index)=>SizedBox(height: 15.0,),

                itemCount: post.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
