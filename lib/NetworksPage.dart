import 'package:flutter/material.dart';
import 'ContactUs.dart';
import 'WhyUs.dart';
import 'kipage.dart';
import 'Umeepage.dart';
import 'Flixpage.dart';
import 'MNTLPage.dart';
import 'Huahuapage.dart';
import 'AKSPage.dart';
import 'package:http/http.dart' as http;

class NetworksPage extends StatelessWidget {
  const NetworksPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child:

        Container(
          height: 1000,
       width: 400,
       // decoration: BoxDecoration(
       //   image: DecorationImage(
       //     image: AssetImage('lib/bckgrd.jpeg'),
       //      fit: BoxFit.cover,
       //    ),
       //  ),
        child: PageView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SafeArea(
                      child: Row(children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_outlined,
                          ),
                          iconSize: 30,
                          color: Colors.white,
                          splashColor: Colors.purple,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'NETWORKS',
                          style: TextStyle(
                            fontFamily: 'Cuprum',
                            color: Color(0xFF0A0E21),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
                Container(
                    child: Row(
                  children: [
                    Container(
                      width: 195,
                      height: 200,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const KI(),
                              ));
                        },
                        child: Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('lib/Ki.png'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ki',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '  (XKI)',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'APR-NaN%',
                                style: TextStyle(

                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                          margin: EdgeInsets.fromLTRB(5,12,5,12),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.pink,
                                  color: Colors.blueGrey,
                                  blurRadius: 1.0, // soften the shadow
                                  spreadRadius:0, //extend the shadow
                                  offset: Offset(
                                    3, // Move to right 10  horizontally
                                    3, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],

                              color: Color(0xFF1D1e33),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                    Container(
                      width: 195,
                      height: 200,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Umee(),
                              ));
                        },
                        child: Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('lib/Umee.jpeg'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Umee',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                  height: 3,
                                  ),
                                  Text(
                                    ' (UMEE)',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'APR-53.35%',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                          margin: EdgeInsets.fromLTRB(5,12,5,12),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.pink,
                                  color: Colors.blueGrey,
                                  blurRadius: 1.0, // soften the shadow
                                  spreadRadius:0, //extend the shadow
                                  offset: Offset(
                                    3, // Move to right 10  horizontally
                                    3, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              color: Color(0xFF1D1e33),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                  ],
                )),
                Container(
                    child: Row(
                  children: [
                    Container(
                      width: 195,
                      height: 200,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Flix(),
                              ));
                          ;
                        },
                        child: Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('lib/Omniflix.jpeg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Omniflix',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '(FLIX)',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              Text(
                                'APR-NaN%',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                          margin: EdgeInsets.fromLTRB(5,12,5,12),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.pink,
                                  color: Colors.blueGrey,
                                  blurRadius: 1.0, // soften the shadow
                                  spreadRadius:0, //extend the shadow
                                  offset: Offset(
                                    3, // Move to right 10  horizontally
                                    3, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              color: Color(0xFF1D1e33),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                    Container(
                      width: 195,
                      height: 200,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MNTL(),
                              ));
                          ;
                        },
                        child: Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('lib/MNTL.jpeg'),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'AssetMantle',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                '(MNTL)',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'APR-25.1%',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                          margin: EdgeInsets.fromLTRB(5,12,5,12),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.pink,
                                  color: Colors.blueGrey,
                                  blurRadius: 1.0, // soften the shadow
                                  spreadRadius:0, //extend the shadow
                                  offset: Offset(
                                    3, // Move to right 10  horizontally
                                    3, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              color: Color(0xFF1D1e33),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                  ],
                )),
                Container(
                    child: Row(
                  children: [
                    Container(
                      width: 195,
                      height: 200,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CHI(),
                              ));
                        },
                        child: Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('lib/Chihuahua.webp'),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Chihuahua',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),

                              Text(
                                '(HUAHUA)',
                                style: TextStyle(

                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'APR-346.1%',
                                style: TextStyle(

                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                          margin: EdgeInsets.fromLTRB(5,12,5,12),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.pink,
                                  color: Colors.blueGrey,
                                  blurRadius: 1.0, // soften the shadow
                                  spreadRadius:0, //extend the shadow
                                  offset: Offset(
                                    3, // Move to right 10  horizontally
                                    3, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              color: Color(0xFF1D1e33),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                    Container(
                      width: 195,
                      height: 200,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AKT(),
                              ));
                        },
                        child: Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('lib/Akash.jpeg'),
                              ),
                              Text(
                                'Akash',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '(AKT)',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              Text(
                                'APR-32.06%',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                          margin: EdgeInsets.fromLTRB(5,12,5,12),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.pink,
                                  color: Colors.blueGrey,
                                  blurRadius: 1.0, // soften the shadow
                                  spreadRadius:0, //extend the shadow
                                  offset: Offset(
                                    3, // Move to right 10  horizontally
                                    3, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              color: Color(0xFF1D1e33),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
            WhyUs(),
            ContactUs(),
          ],
        ),
      ),),
    );
  }
}
