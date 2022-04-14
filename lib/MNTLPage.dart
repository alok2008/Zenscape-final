import 'package:flutter/material.dart';
import 'MNTLCalculator.dart';
import 'kipage.dart';
import 'Umeepage.dart';
import 'Flixpage.dart';
import 'package:http/http.dart';
import 'Huahuapage.dart';
import 'AKSPage.dart';


class MNTL extends StatefulWidget {
  const MNTL({Key? key}) : super(key: key);

  @override
  State<MNTL> createState() => _MNTLState();
}

class _MNTLState extends State<MNTL> {
  double _value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ASSETMANTLE'),
        backgroundColor: Colors.indigo,
      ),
      drawer: Drawer(
        child: ListView(
          children: [

            ListTile(
              title: Center(
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.network_wifi),
                      TextButton(
                        child: const Text('KI'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KI()),
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
                        child: const Text('UMEE'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Umee()),
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
                        child: const Text('OMNIFLIX'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Flix()),
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
                        child: const Text('ASSETMANTLE'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MNTL()),
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
                        child: const Text('CHIHUAHUA'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CHI()),
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
                        child: const Text('AKASH'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AKT()),
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
      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('lib/MNTL.jpeg'),
                          ),
                        ),
                        SizedBox(),
                        Column(
                          children: [
                            Text(
                              'Asset Mantle',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '(MNTL)',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              'APR-346.1%',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xFF1D1e33),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ],
        ),

        Row(children:[Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            'APR - 346.1%',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),]),
        Row(children: [Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            'COMMISSION - 5%',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),],),
        Row(children: [Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            'VOTING POWER - 0.00%',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),],),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: ElevatedButton(onPressed:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MNTLCalculator(),
                    ));;}, child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Stake >'),
              )),
            ),
          ],
        )
      ]),
    );
  }
}
