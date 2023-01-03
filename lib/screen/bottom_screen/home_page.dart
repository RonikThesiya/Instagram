import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<data> story = [
    data(photo: "",post: "assets/post/ronik.jpeg",name: "ronik._.thesiya"),
    data(post: "assets/post/ronak.jpeg",name: "_ronak.official_"),
    data(post: "assets/post/chavda.jpeg",name: "iamkartikchavda"),
    data(post: "assets/post/yash.jpeg",name: ""),
    data(post: "assets/post/jay.jpeg",name: "jack_.3435"),
    data(post: "assets/post/madhani.jpeg",name: "preet_madhani_5671"),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text("Instagram",
                  style: TextStyle(
                      fontFamily: 'Billabong',
                      fontSize: 30,
                      color: Colors.black)),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.black,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.commentDots),
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: story.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("${story[index].post}"),
                            ),
                          ],
                        ));
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: story.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 520,
                      width: double.infinity,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("${story[index].post}"),
                            ),
                            title: Text("${story[index].name}"),
                            trailing: FaIcon(FontAwesomeIcons.ellipsisVertical),
                          ),
                          Container(
                            height: 400,
                            width: double.infinity,
                            color: Colors.white,
                            child: Image.asset("${story[index].post}"),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 10)),
                              FaIcon(FontAwesomeIcons.heart),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              FaIcon(FontAwesomeIcons.comment),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              FaIcon(FontAwesomeIcons.locationArrow),
                              Padding(padding: EdgeInsets.only(left: 230)),
                              FaIcon(FontAwesomeIcons.bookmark)

                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 8,)),
                              CircleAvatar(radius: 10,backgroundImage: AssetImage("assets/post/chavda.jpeg"),),
                              Padding(padding: EdgeInsets.only(left: 8)),
                              Text("Liked by iamkartikchavda and 3289 others"),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class data {
  String? photo,post,name;

  data({this.photo,this.post,this.name});
}
