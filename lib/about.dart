import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("About & Collaborators"),
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/web_hi_res_512.png",
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Let's Learn Flutter",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Version 1.0.0",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 52, right: 52),
                    child: Divider(),
                  ),
                  Text(
                    "Bought To You By",
                    style: TextStyle(fontSize: 14, color: Colors.black38),
                  ),
                  FlatButton(
                    child: Text(
                      "Grevity.in",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    onPressed: () {
                      launch("https://grevity.in");
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 52, right: 52),
                    child: Divider(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32,right: 32),
                    child: Text(
                      "👋 This is an Open Source Project which allows everyone to learn flutter along with its implementation, you can also learn from the source code of this project. Please feel free to contribute in this project let's make this app one of the best learning resources of flutter! Enjoy Learning!",
                      style: TextStyle(fontSize: 17, color: Colors.blueGrey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Open Repository",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    onPressed: () {
                      launch("https://github.com/grevity/Flutter-Gallery-Ultimate");
                    },
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Text(
                    "🏅Top Collaborators🏅",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32,right: 32),
                    child: Text(
                      "Top Collaborators of this project will be listed here. Listing of Collaborators will be decided according to the repository's Insights",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CollaboratersGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//that below widget will be converted into a grid in future on increasing of
//collaboraters...
class CollaboratersGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(12),
          child: InkWell(
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 8.4,
              backgroundImage: AssetImage("assets/gurkaran.jpg"),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => CollaboratorAboutDialog(
                  image: "assets/gurkaran.jpg",
                  name: "Gurkaran Singh",
                  special: "Founder, CEO of Grevity",
                  github: "https://github.com/TheStarkster",
                  linkedIn: "https://www.linkedin.com/in/sgurkaran/",
                  insta: "https://www.instagram.com/software.wale.bhaiya/",
                )
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: InkWell(
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 8.4,
              backgroundImage: AssetImage("assets/prince.jpg"),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => CollaboratorAboutDialog(
                    image: "assets/prince.jpg",
                    name: "Prince Bansal",
                    github: "https://github.com/BenzeeIMF",
                    linkedIn: "https://www.linkedin.com/in/prince-bansal-b295bb17b/",
                    insta: "https://www.instagram.com/pseprince/",
                  )
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: InkWell(
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 8.4,
              backgroundImage: AssetImage("assets/ruchin.jpg"),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => CollaboratorAboutDialog(
                    image: "assets/ruchin.jpg",
                    name: "Ruchin Shinde",
                    github: "https://github.com/Ruchin2406",
                    linkedIn: "https://www.linkedin.com/in/ruchin-shinde-b76262154/",
                    insta: "https://www.instagram.com/ruchin_24699/",
                  )
              );
            },
          ),
        ),
      ],
    );
  }
}

class CollaboratorAboutDialog extends StatelessWidget {
  final String image,name,linkedIn,insta,github,special;
  CollaboratorAboutDialog({this.name,this.linkedIn,this.insta,this.github,this.special,this.image});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: MediaQuery.of(context).size.width / 6.4,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(height: 12,),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
          ),
          special != null ?
          Text(
            special,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16,color: Colors.black54),
          ):
              Container(),
          SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              github != null ?
              IconButton(icon: Icon(FontAwesomeIcons.github),
                onPressed: () {
                  launch(github);
                },
              ):Container(),
              linkedIn != null ?
              IconButton(icon: Icon(FontAwesomeIcons.linkedinIn),
                onPressed: () {
                  launch(linkedIn);
                },
              ):Container(),
              insta != null ?
              IconButton(icon: Icon(FontAwesomeIcons.instagram),
                onPressed: () {
                  launch(insta);
                },
              ):Container(),
            ],
          )
        ],
      ),
    );
  }
}
