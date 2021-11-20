import 'package:csit_book/main.dart';
import 'package:csit_book/second/discrete/main.dart';
import 'package:csit_book/second/microprocessor/main.dart';
import 'package:csit_book/second/oop/main.dart';
import 'second/math/unit1.dart';
import 'package:csit_book/second/statics/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  Drawer(

      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(

              width: double.infinity,
              padding: EdgeInsets.all(30.0),
              color: Colors.grey[850],
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 60,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/image.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      'freecode',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'RobotoMono',
                        decorationColor: Colors.blue,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }),
            ListTile(
                leading: Icon(
                  Icons.memory,
                ),
                title: Text('Statics I'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => stat()),
                  );
                }),
            ListTile(
                leading: Icon(
                  Icons.computer,
                ),
                title: Text('OOPS'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => oops()),
                  );
                }),
            ListTile(
                leading: Icon(
                  Icons.settings_input_component,
                ),
                title: Text('Microprocessor'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => micro()),
                  );
                }),
            ListTile(
                leading: Icon(
                  Icons.attractions,
                ),
                title: Text('Mathematics II'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
            ListTile(
                leading: Icon(
                  Icons.attractions,
                ),
                title: Text('Discrete Structure'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => discrete()),
                  );
                }),
            ListTile(
              leading: Icon(
                Icons.system_update,
              ),
              title: Text('Update'),
              onTap: () {
                String url =
                    "https://drive.google.com/drive/folders/1WQ8F-Gy4Ps1RYEdCo-sLAsqXFG4GTZoO";
                launch(url);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.video_collection,
              ),
              title: Text('Youtube'),
              onTap: () {
                String url = "https://www.youtube.com/freecode";
                launch(url);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app_rounded,
              ),
              title: Text(
                'Exit',
                style: TextStyle(color: Colors.redAccent),
              ),
              onTap: () {
                SystemNavigator.pop();
              },
            ),

          ],
        ),
      ),
    );
  }
}
