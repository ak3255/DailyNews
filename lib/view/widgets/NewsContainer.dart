// Copyright (c) 2024 PureAman

import 'package:daliynews/view/detail_view.dart';
import 'package:flutter/material.dart';

class Newscontainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  Newscontainer({
    super.key,
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                    newsHead.length > 70
                        ? "${newsHead.substring(0, 70)}..."
                        : newsHead,
                    style:
                        const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  newsDes,
                  style: const TextStyle(fontSize: 10, color: Colors.black38),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  newsCnt != "--"
                      ? newsCnt.length > 150
                          ? newsCnt.substring(0, 150)
                          : "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                      : newsCnt,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailViewScreen(newsUrl: newsUrl)));
                    },
                    child: const Text("Read More")),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
