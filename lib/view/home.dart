import 'package:daliynews/controller/fetchNews.dart';
import 'package:daliynews/model/newsArt.dart';
import 'package:daliynews/view/widgets/NewsContainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isLoading = true;

  late NewsArt newsArt;

  GetNews() async{
    newsArt = await FetchNews.fetchNews();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: PageView.builder(
          controller: PageController(initialPage: 0), //isko sikhna
          scrollDirection: Axis.vertical, //isko sikhna
          onPageChanged: (value){
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return isLoading ? Center(child: CircularProgressIndicator(),) : Newscontainer(
                imgUrl: newsArt.imgUrl ,
                newsHead: newsArt.newsHead,
                newsDes: newsArt.newsDes,
                newsCnt: newsArt.newsCnt,
                newsUrl: newsArt.newsUrl);
          }),
    );
  }
}
