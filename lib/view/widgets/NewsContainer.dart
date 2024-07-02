import 'package:daliynews/view/detail_view.dart';
import 'package:flutter/material.dart';

class Newscontainer extends StatelessWidget {

  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  Newscontainer({super.key,

    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsUrl,
    required this.newsCnt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,


      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SafeArea(
            child: FadeInImage.assetNetwork(
                height: 250,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                placeholder: "assets/images/placeholder.jfif",
                image: imgUrl),
          ),

        // Image.network(
        // height: 300,
        // width: MediaQuery.of(context).size.width,
        // fit: BoxFit.cover,
        // imgUrl),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 20,),
            Text(
                newsHead.length > 70
                    ? "${newsHead.substring(0,70)}..." : newsHead,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text(newsDes, style: TextStyle(fontSize: 10, color: Colors.black38),),
              SizedBox(height: 10,),
              Text(
                newsCnt != "--" ?
                newsCnt.length >150
                    ? newsCnt.substring(0,150)
                    : "${newsCnt.toString().substring(0, newsCnt.length-15)}..." : newsCnt,
                style: TextStyle(fontSize: 15),),
          ],),
        ),

          Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailViewScreen(newsUrl: newsUrl)));
              },
                  child: Text("Read More")),
            ),
          ],
        ),
          SizedBox(height: 20,)

      ],),
    );
  }
}
