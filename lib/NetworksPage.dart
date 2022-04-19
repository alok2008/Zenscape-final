import 'package:flutter/material.dart';
import 'ContactUs.dart';
import 'WhyUs.dart';
import 'kipage.dart';
import 'Umeepage.dart';
import 'Flixpage.dart';
import 'MNTLPage.dart';
import 'Huahuapage.dart';
import 'AKSPage.dart';
import 'main.dart';
import 'package:http/http.dart' as http;

class NetworksPage extends StatefulWidget {
  const NetworksPage({Key? key}) : super(key: key);


  @override
  State<NetworksPage> createState() => _NetworksPageState();
}

class _NetworksPageState extends State<NetworksPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  int currentIndex = 1;

  initState(){
    _animationController =AnimationController(vsync: this,
        duration: Duration(milliseconds: 1000));

    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        iconSize: 25,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              label: 'Home',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.now_widgets_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NetworksPage()),
                  );
                },
              ),
              label: 'Networks',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blueGrey),
        ],
      ),
      body: SingleChildScrollView(child:

        AnimatedContainer(
          duration: Duration(milliseconds:400),
          height: 800,
       width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/register.png'),
              fit: BoxFit.cover,
            ),
          ),
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
                          color: Colors.black,
                          splashColor: Colors.purple,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'NETWORKS',
                          style: TextStyle(
                            fontFamily: 'Cuprum',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        )
                      ],),
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
                              Hero(
                                tag: 'Kilogo',
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage('lib/Ki.png'),
                                ),
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
                              // Text(
                              //   'APR-',
                              //   style: TextStyle(
                              //
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.bold,
                              //     color: Colors.white,
                              //   ),
                              // ),
                            ],
                          )),
                          margin: EdgeInsets.fromLTRB(5,12,5,12),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
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
                              // Text(
                              //   'APR-53.35%',
                              //   style: TextStyle(
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.bold,
                              //     color: Colors.white,
                              //   ),
                              // ),
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

                              // Text(
                              //   'APR-NaN%',
                              //   style: TextStyle(
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.bold,
                              //     color: Colors.white,
                              //   ),
                              // ),
                            ],
                          )),
                          margin: EdgeInsets.fromLTRB(5,12,5,12),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
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
                              // Text(
                              //   'APR-25.1%',
                              //   style: TextStyle(
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.bold,
                              //     color: Colors.white,
                              //   ),
                              // ),
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
                              // Text(
                              //   'APR-346.1%',
                              //   style: TextStyle(
                              //
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.bold,
                              //     color: Colors.white,
                              //   ),
                              // ),
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

                              // Text(
                              //   'APR-32.06%',
                              //   style: TextStyle(
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.bold,
                              //     color: Colors.white,
                              //   ),
                              // ),
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
