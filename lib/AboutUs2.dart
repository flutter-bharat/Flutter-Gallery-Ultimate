import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/AboutUs1.dart';
import 'package:flutter_gallery_ultimate/about.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs2 extends StatefulWidget {
  @override
  _AboutUs2State createState() => _AboutUs2State();
}

class _AboutUs2State extends State<AboutUs2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text("About Us"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Hero(
            tag: 'prince',
            child: Center(child: CircleAvatar(
              maxRadius: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/prince.jpg'),
                ),
              ),
            )),
          ),
          SizedBox(height: 10),
          Text("Prince",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600)),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("        2.  A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires "
                "the completion of another one, or where multiple steps need to be completed in order to submit"
                " the whole form.The widget is a flexible wrapper. A parent class should pass currentStep to this widget based on some logic triggered by the"
                " three callbacks that it provides."),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                      onTap: () async{
                        const url = "https://www.instagram.com/pseprince";
                        if(await canLaunch(url)){
                          await launch(url);
                        }
                        else{
                          throw 'Could not lanch $url';
                        }
                      },
                      child: SvgPicture.asset("assets/instagram.svg",width: 30,height: 25,)),
                  SizedBox(height: 10),
                  Text("Intagram",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                ],
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  GestureDetector(
                      onTap: () async{
                        const url = "https://www.linkedin.com/in/prince-bansal-b295bb17b";
                        if(await canLaunch(url)){
                          await launch(url);
                        }
                        else{
                          throw 'Could not lanch $url';
                        }
                      },
                      child: SvgPicture.asset("assets/linkedin.svg",width: 30,height: 25,)),
                  SizedBox(height: 10),
                  Text("LinkedIn",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                ],
              ),
            ],
          ),
          SizedBox(height: 70),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'gurkaran',
                  child: GestureDetector(
                    child: CircleAvatar(
                      maxRadius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/gurkaran.jpg'),
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
                    },
                  ),
                ),
                SizedBox(width: 20),
                Hero(
                  tag: 'ruchin',
                  child: GestureDetector(
                    child: CircleAvatar(
                      maxRadius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/ruchin.jpg'),
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs1()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
