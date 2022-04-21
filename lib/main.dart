
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'ContactUs.dart';
import 'NetworksPage.dart';
import 'WhyUs.dart';

void main() {
  runApp(MaterialApp(
    title: 'Zenscape',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    // NetworksPage(),
    // WhyUs(),
    // ContactUs(),
  ];
  late AnimationController _animationController;

  initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation : 0,
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(

          showUnselectedLabels: false,
          iconSize: 25,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,

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
                icon: Icon(Icons.more_horiz_rounded),
                label: 'Profile',
                backgroundColor: Colors.white),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [

            ListTile(
              title: Center(
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.now_widgets_rounded),
                      TextButton(
                        child: const Text('NETWORKS'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NetworksPage()),
                          );
                          // Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.question_answer_outlined),
                      TextButton(
                        child: const Text('WHY US'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WhyUs()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.phone),
                      TextButton(
                        child: const Text('CONTACT US'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ContactUs()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        children: [SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 40),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Image.asset('lib/Zenscape-logo.png'),),
                          Text(
                            'ZENSCAPE',
                            style: TextStyle(
                                fontFamily: 'Cuprum',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 270,
                    width: 350,
                    child: Lottie.asset('asset/87290-staking.json'),
                  ),
                  Text(
                    'STAKERS',
                    style: TextStyle(
                      fontFamily: 'Cuprum',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color(0xFF444B59),
                    ),
                  ),
                  Text(
                    'GONNA STAKE!',
                    style: TextStyle(
                      fontFamily: 'Cuprum',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color(0xFF444B59),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25,0,25,0),
                    child: Container(
                      child: Center(
                        child: Text(
                          'Enterprise-grade level infrastructure for Defi degens to stake their crypto assets and earn yields on it.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF444B59),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(

                      child: const Text('Stake Now >>'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF444B59)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NetworksPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('lib/login.png'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
        ),
        // WhyUs(),
        //     ContactUs()],
      ]),
    );
  }
}
