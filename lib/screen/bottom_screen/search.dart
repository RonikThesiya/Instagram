import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List<all> video = [
    all(videos: "assets/post/chavda.jpeg"),
    all(videos: "assets/post/ronak.jpeg"),
    all(videos: "assets/post/yash.jpeg"),
    all(videos: "assets/post/jay.jpeg"),
    all(videos: "assets/post/ronik.jpeg"),
    all(videos: "assets/post/chavda.jpeg"),
    all(videos: "assets/post/ronak.jpeg"),
    all(videos: "assets/post/yash.jpeg"),
    all(videos: "assets/post/jay.jpeg"),
    all(videos: "assets/post/ronik.jpeg"),
    all(videos: "assets/post/chavda.jpeg"),
    all(videos: "assets/post/ronak.jpeg"),
    all(videos: "assets/post/yash.jpeg"),
    all(videos: "assets/post/jay.jpeg"),
    all(videos: "assets/post/ronik.jpeg"),
    all(videos: "assets/post/chavda.jpeg"),
    all(videos: "assets/post/ronak.jpeg"),
    all(videos: "assets/post/yash.jpeg"),
    all(videos: "assets/post/jay.jpeg"),
    all(videos: "assets/post/ronik.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: video.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      child: Image.asset("${video[index].videos}",fit: BoxFit.fill,),
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}

class all{

  String? videos;

  all({this.videos});
}