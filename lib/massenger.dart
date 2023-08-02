import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://images6.fanpop.com/image/photos/42700000/Jungkook-jungkook-bts-42779875-750-1124.jpg"),

            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(color: Colors.black),
            )

          ],
        ),
        actions: [
          CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt,size: 16,color: Colors.white,))),
          SizedBox(
            width: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: IconButton(onPressed: (){}, icon:Icon(Icons.edit,size: 16,color: Colors.white,))),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child:
               Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10,),
                  Text("Search")
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 100,
              child: ListView.separated(
                itemBuilder:(context,index)=>buildStoryItem(),
                itemCount:14,
                separatorBuilder: (context,index)=>SizedBox(width: 10,),
                scrollDirection: Axis.horizontal,),
            ),
            SizedBox(height: 15,),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context,index)=>chatItem(),
                separatorBuilder: (context,index)=>SizedBox(height: 10,), itemCount: 14,),
            ),


          ],
        ),
      ),
    );
  }
  Widget chatItem(){
    return Row(
        children: [
        Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
        CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage("https://images6.fanpop.com/image/photos/42700000/Jungkook-jungkook-bts-42779875-750-1124.jpg"),

    ),
    Padding(
    padding: const EdgeInsetsDirectional.only(bottom: 3,end:3),
    child: CircleAvatar(
    radius: 7,
    backgroundColor: Colors.green,
    ),
    ),

    ],

    ),
    SizedBox(width: 10,),
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Menna Ahmed Dawah",style: TextStyle(fontWeight: FontWeight.bold),),
    Row(
    children: [
    Expanded(child: Text("welcom to use messanger app . enjoy using")),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
    width: 7,
    height: 7,
    decoration: BoxDecoration(
    color: Colors.blue,
    shape: BoxShape.circle,
    ),
    ),

    ),
    Text("1:00 pm")
    ],
    ),
    ],
    ),
    ),
    ],
    );
  }
  Widget buildStoryItem(){
    return  Container(
      width: 50,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://images6.fanpop.com/image/photos/42700000/Jungkook-jungkook-bts-42779875-750-1124.jpg"),

              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 3,end:3),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),

            ],

          ),
          Text("Menna Ahmed Dawah",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}