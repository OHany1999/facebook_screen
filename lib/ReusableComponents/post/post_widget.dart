import 'package:assignment2_design/ReusableComponents/post/post_model.dart';
import 'package:flutter/material.dart';

import '../default_CircleAvatar.dart';

class PostWidget extends StatelessWidget {
PostModel postModel;

PostWidget(this.postModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  DefaultCircleIcon(size: 20.0, iconColor: Colors.white, icon: Icons.person, backgroundColor: Colors.black,),
                  SizedBox(width: 15.0,),
                  Column(
                    children: [
                      Text(postModel.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      Row(children: [
                        Text('3h'),
                        SizedBox(width: 2.0,),
                        Icon(Icons.south_america_outlined,size: 15.0),
                      ],),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30.0,),
              Text(postModel.post,style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Row(children: [
                Text('100'),
                SizedBox(width: 10.0,),
                Image.asset('assets/like.jpg',width: 50.0,height: 50.0,),
                Spacer(),
                Text('100 Comments',style: TextStyle(),),
              ],),
            ],),
        ),
        SizedBox(height: 15.0,),
        Column(children: [
          Container(width: double.infinity,height: 1.0,color: Color.fromRGBO(
              195, 195, 195, 1.0),),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                child: Row(
                  children: [
                    Image.asset('assets/singleLike.jpg',width: 20.0,height: 20.0,),
                    SizedBox(width: 5.0,),
                    Text('Like',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 65.0),
                child: Row(
                  children: [
                    Image.asset('assets/comment.jpg',width: 20.0,height: 20.0,),
                    SizedBox(width: 5.0,),
                    Text('Comment',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Image.asset('assets/share.png',width: 20.0,height: 20.0,),
                    SizedBox(width: 5.0,),
                    Text('Share',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
            ],),
          SizedBox(height: 20.0,),
          Container(width: double.infinity,height: 1.0,color:  Color.fromRGBO(
              195, 195, 195, 1.0),),
        ],),

      ],
    );
  }
}
