import 'package:flutter/material.dart';
import 'ContactUs.dart';
import 'NetworksPage.dart';
import 'WhyUs.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      // primaryColor: Color(0xFF0A0E21),
      // accentColor: Colors.purple,
      // scaffoldBackgroundColor: Color(0xFF0A0E21),

    ),
    title: 'Zenscape',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('ZENSCAPE',
          style: TextStyle(
            fontFamily: 'Cuprum',

              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/apbar.webp'), fit: BoxFit.cover),
              ),
              child: Text('ZENSCAPE',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                ),),),
            ListTile(
              title: Center(
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.network_wifi),
                      TextButton(
                        child: const Text('NETWORKS'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NetworksPage()),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/bckgrd.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'STAKERS ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
              Text(
                'GONNA  STAKE',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 45,

                  color: Colors.white,
                ),
              ),
              Text(
                '       ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              Text(
                'Enterprise-grade level infrastructure for ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Defi degens to stake their crypto assets and earn yields on it.',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  child: const Text('Stake Now >>'),
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
      ),
    );
  }
}
