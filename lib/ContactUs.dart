import 'package:flutter/material.dart';
import 'WhyUs.dart';
import 'NetworksPage.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/bckgrd.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'Contact Us',
                        style: TextStyle(
                          fontFamily: 'Cuprum',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A0E21),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                print('ki got pressed');
                              },
                              child: Container(
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(05.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'E-Mails',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(left:50.0,right:50),
                                                child: CircleAvatar(

                                                  radius: 40,
                                                  backgroundImage: AssetImage(
                                                      'lib/mailbox.png'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              '<email id>',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        // color: Colors.pink,
                                        color: Colors.white24,
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
                      ),
                    ),
                  ),
                  ListTile(
                    title: Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                print('ki got pressed');
                              },
                              child: Container(
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 28.0),
                                              child: CircleAvatar(
                                                radius: 40,
                                                backgroundImage:
                                                    AssetImage('lib/fb.png'),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Facebook',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text(
                                              'Facebook',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        // color: Colors.pink,
                                        color: Colors.white24,
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
                      ),
                    ),
                  ),
                  ListTile(
                    title: Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                print('ki got pressed');
                              },
                              child: Container(
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    'Twitter',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50),
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundImage: AssetImage(
                                                      'lib/tweet.png'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              'Twitter id',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        // color: Colors.pink,
                                        color: Colors.white24,
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
