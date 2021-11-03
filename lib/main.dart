

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Profile App",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile App',textDirection: TextDirection.ltr,),
        ),
        body: Center(child: Column(
          children: [
            SizedBox(height: 30,),
            Center(child: Image.network("https://avatars.githubusercontent.com/u/59447828?s=400&u=dd3abe2801cccf659d6c43ac8d70429397e944ee&v=4", height: 300, width: 300,)),
            SizedBox(height: 20,),
            Text("Pujan Sapkota",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Text("Koteshwor-32, Kathmandu",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Text("Computer Engineer",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Text("Student, freelancer",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            RichText(
              text: TextSpan(
                text: 'Github Profile',
                style: TextStyle(fontSize: 24,color: Colors.black, fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                ..onTap = () {launch('https://github.com/Pujan77');},
              )
              ),
              SizedBox(height: 20,),
              RichText(
              text: TextSpan(
                text: 'Connect on linkedin',
                style: TextStyle(fontSize: 24,color: Colors.blue, fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                ..onTap = () {launch('https://www.linkedin.com/in/pujansapkota7');},
              )
              ),
              SizedBox(height: 50,),
              Center(
                child: GestureDetector(
                  onTap: () {launch('https://github.com/Pujan77');},
                  child: Image.network("https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png", height: 50, width: 50,),
                )
                ),
          ],
          ),
          ),
    ),
  ));
}
