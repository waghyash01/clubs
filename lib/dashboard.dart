import 'package:club_integration/acm.dart';
import 'package:club_integration/expression.dart';
import 'package:club_integration/gfg.dart';
import 'package:club_integration/nashornss.dart';
import 'package:club_integration/tedx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'gdscinfo.dart';

class Patientpage extends StatelessWidget {
  const Patientpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCCCDCC),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: const Color(0xff2F2E40),
        title: Text(
          "UNICLUB",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/more2.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));
              },
              child: const Card(
                child: ListTile(
                  title: Text("Home"),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => HelpPage(),));
              },
              child: const Card(
                child: ListTile(
                  title: Text("Clubs"),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage(),));
              },
              child: const Card(
                child: ListTile(
                  title: Text("Events"),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CardItempatient('GDSC', 'assets/gdsc.jpg', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return GDSCInfoPage();
                    },
                    ),
                    );
                  }),
                ),

                Expanded(
                  child: CardItempatient('TEDX', 'assets/tedx.jpg', () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>tedxInfoPage()));
                  }),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CardItempatient('NASHORNS', 'assets/nashorns.jpg', () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>nasInfoPage()));
                }),
              ),

              Expanded(
                child: CardItempatient('GFG', 'assets/gfg.dart.jpg', () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>gfgInfoPage()));
                }),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CardItempatient('ACM', 'assets/acm.jpg', () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>acmInfoPage()));
                }),
              ),

              Expanded(
                child: CardItempatient('EXPRESSION', 'assets/exp.jpg', () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>expInfoPage()));
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardItempatient extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  CardItempatient(this.title, this.imagePath, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 150.0,
              width: 165.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
