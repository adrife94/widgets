import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar"),
        actions: [
          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://img.huffingtonpost.com/asset/5e59a34c230000590d39c782.jpeg?cache=DIia6XM8wX&ops=scalefit_720_noupscale"),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("Ok"),
              backgroundColor: Colors.black,
              
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://img.huffingtonpost.com/asset/5e59a34c230000590d39c782.jpeg?cache=DIia6XM8wX&ops=scalefit_720_noupscale"),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
