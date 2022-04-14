import 'package:flutter/material.dart';
import 'ContactUs.dart';
import 'NetworksPage.dart';

class WhyUs extends StatelessWidget {
  const WhyUs({Key? key}) : super(key: key);

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
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Why Stake With Us',
                        style: TextStyle(
                          fontFamily: 'Cuprum',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
                                                  'Easy To Stake',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: CircleAvatar(
                                                  radius: 40,
                                                  backgroundImage: AssetImage(
                                                      'lib/staking.jpeg'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Stake your assets in a faster, smoother and easier way through our platform without any hassle.',
                                              style: TextStyle(
                                                fontSize: 15,
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
                                                    AssetImage('lib/Comp.jpeg'),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Auto',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  'Compounding',
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
                                              'With the feature of auto-compounding, maximise your yields on your staked assets.',
                                              style: TextStyle(
                                                fontSize: 15,
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
                                          padding: const EdgeInsets.all(12.0),
                                          child: Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    'Secure',
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Networks',
                                                    style: TextStyle(
                                                      fontSize: 25,
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
                                                        horizontal: 60),
                                                child: CircleAvatar(
                                                  radius: 40,
                                                  backgroundImage: AssetImage(
                                                      'lib/Safestaking.jpeg'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'With our multi-layer security and 0% downtime guarantee, your assets are 100% secure.',
                                              style: TextStyle(
                                                fontSize: 15,

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
                  ),],
              ),
            ),],
        ),
      ),
    );
  }
}
