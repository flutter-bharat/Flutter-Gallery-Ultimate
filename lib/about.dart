import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gallery_ultimate/AboutUs1.dart';
import 'package:flutter_gallery_ultimate/AboutUs2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';



class AboutUs extends StatefulWidget {

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text("Team"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Hero(
            tag: 'gurkaran',
            child: Center(child: CircleAvatar(
              maxRadius: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/gurkaran.jpg'),
                ),
              ),
            )),
          ),
          SizedBox(height: 10),
          Text("Gurkaran Singh",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600)),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("          A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires "
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
                      const url = "https://www.instagram.com/software.wale.bhaiya/?igshid=1nc0byahk2ztb";
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
                        const url = "https://www.instagram.com/software.wale.bhaiya/?igshid=1nc0byahk2ztb";
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
                      if(Navigator.canPop(context)){
                        Navigator.popUntil(context, ModalRoute.withName('home'));
                      }
                      //Navigator.pop(context, true);
                    },
                  ),
                ),
                SizedBox(width: 20),
                Hero(
                  tag: 'prince',
                  child: GestureDetector(
                    child: CircleAvatar(
                      maxRadius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/prince.jpg'),
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs2()));
                    },
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal:18.0),
            height: 25.0,
            width: MediaQuery.of(context).size.width,
            child: Text("copyright 2020 All rights reserved | Made by Ruchin Shinde and Prince",style: TextStyle(fontSize: 12),),
          ),
        ],
      ),
    );
  }
}
