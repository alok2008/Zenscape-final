import 'package:flutter/material.dart';
import 'package:zenscape_final/Calculator%20Page/Kicalculator.dart';
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
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text('NETWORKS',
        style: TextStyle(
          color: Colors.black,

        ),),
        backgroundColor: Colors.transparent,
        elevation : 0,
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
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
              backgroundColor: Colors.white),
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
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.white),
        ],
      ),
      body: SingleChildScrollView(child:

        Container(
          height: 800,
       width: 500,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('lib/register.png'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
        child: PageView(
          children: <Widget>[
            Column(
              children: <Widget>[

                Expanded(
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFFE3F6FD), Color((0xFFE8DCF8))]),

                          color: Color(0xFFE8DCF8).withOpacity(1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const KI(),
                              ));

                        },
                        child: Center(
                            child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Hero(
                              tag: 'Kilogo',
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('lib/Ki.png'),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Ki',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '  (XKI)',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
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
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFFE3F6FD), Color((0xFFE8DCF8))]),
                          color: Color(0xFFE3F6FD).withOpacity(1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Umee(),
                              ));
                        },
                        child: Center(
                          child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('lib/Umee.jpeg'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Umee',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                width: 3,
                                ),
                                Text(
                                  ' (UMEE)',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 5,
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
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFFE3F6FD), Color((0xFFE8DCF8))]),
                          color: Color(0xFFE8DCF8).withOpacity(1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Flix(),
                              ));
                          ;
                        },
                        child: Center(
                            child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('lib/Omniflix.jpeg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Omniflix',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '(FLIX)',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFFE3F6FD), Color((0xFFE8DCF8))]),

                          color: Color(0xFFE3F6FD).withOpacity(1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MNTL(),
                              ));
                          ;
                        },
                        child: Center(
                            child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('lib/MNTL.jpeg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'AssetMantle',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 3),
                            Text(
                              '(MNTL)',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFFE3F6FD), Color((0xFFE8DCF8))]),

                          color: Color(0xFFE8DCF8).withOpacity(1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CHI(),
                              ));
                        },
                        child: Center(
                            child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('lib/Chihuahua.webp'),
                            ),
                            SizedBox(width:10),
                            Text(
                              'Chihuahua',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5),

                            Text(
                              '(HUAHUA)',
                              style: TextStyle(

                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFE3F6FD), Color((0xFFE8DCF8))]),
                          // color: Color(0xFFE3F6FD).withOpacity(1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AKT(),
                              ));
                        },
                        child: Center(
                            child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('lib/Akash.jpeg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Akash',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '(AKT)',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // WhyUs(),
            // ContactUs(),
          ],
        ),
      ),),
    );
  }
}
