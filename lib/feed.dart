import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'post.dart';
import 'story.dart';

// ignore: must_be_immutable
class Feed extends StatelessWidget {
  List<Story> _stories = [
    Story(
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jazmin"),
    Story(
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sylvester"),
    Story(
        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lavina"),
    Story(
        "https://images.pexels.com/photos/1124724/pexels-photo-1124724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Mckenzie"),
    Story(
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Buster"),
    Story(
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Carlie"),
    Story(
        "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Edison"),
    Story(
        "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Flossie"),
    Story(
        "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lindsey"),
    Story(
        "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Freddy"),
    Story(
        "https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Litzy")
  ];

  List<Post> posts = [
    Post(
        username: "Brianne",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
        caption: "Consequatur nihil aliquid omnis consequatur. ",
        postImage:
            "https://images.pexels.com/photos/302769/pexels-photo-302769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Post(
        username: "Henri",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/kevka/128.jpg",
        caption: "Ritika sachade is james Bond 007.",
        postImage:
            "https://images.pexels.com/photos/884979/pexels-photo-884979.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        ),
    Post(
        username: "Mariano",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/ionuss/128.jpg",
      caption: "Consequatur nihil aliquid omnis consequatur.",
      postImage:
            "https://images.pexels.com/photos/291762/pexels-photo-291762.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        ),
    Post(
        username: "Johan",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/vinciarts/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "London",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/ssiskind/128.jpg",
        postImage:
            "https://images.pexels.com/photos/247298/pexels-photo-247298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Jada",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/areus/128.jpg",
        postImage:
            "https://images.pexels.com/photos/169191/pexels-photo-169191.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Crawford",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/oskarlevinson/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Stories",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),*/
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _stories.map((story) {
                  return Column(
                    children: <Widget>[
                      ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          /*decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 0,
                              color: Color(0xFF8e44ad),
                            ),
                          ),*/
                          child: Container(
                            padding: EdgeInsets.all(
                              2,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image(
                                image: NetworkImage(story.image),
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(story.name),
                    ],
                  );
                }).toList(),
              ),
            ),

            // posts
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image(
                                      image: NetworkImage(posts[i].userImage),
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(posts[i].username),
                                ],
                              ),
                              IconButton(
                                icon: Icon(SimpleLineIcons.options_vertical),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 5,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " ${posts[i].caption}",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),

                        FadeInImage(
                          image: NetworkImage(posts[i].postImage),
                          placeholder: AssetImage("assets/placeholder.png"),
                          width: MediaQuery.of(context).size.width,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.heart),
                                ),

                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesome.comment),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesome.send),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesome.gift),
                            ),
                          ],
                        ),

                        /*Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Liked By ",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: "Sigmund,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " Yessenia,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " Dayana",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " and",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " 1263 others",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),*/

                        // caption


                        // post date
                        /*Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Febuary 2020",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),*/
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path= new Path();
    path.lineTo(0, size.width-30);
    var controllpoint = Offset(95,size.width*1.5);
    var endpoint=Offset(size.height,size.width/70);
    path.quadraticBezierTo(controllpoint.dx, controllpoint.dy, endpoint.dx, endpoint.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
  
}