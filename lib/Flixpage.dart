import 'package:flutter/material.dart';
import 'main.dart';
import 'package:zenscape_final/Validators.dart';
import 'FlixCalculator.dart';
import 'kipage.dart';
import 'Umeepage.dart';
import 'MNTLPage.dart';
import 'Huahuapage.dart';
import 'AKSPage.dart';

class Flix extends StatefulWidget {
  const Flix({Key? key}) : super(key: key);

  @override
  State<Flix> createState() => _FlixState();
}

class _FlixState extends State<Flix> {
  @override
  double _value=0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OMNIFLIX'),
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
                      Icon(Icons.home),
                      TextButton(
                        child: const Text('HOME'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
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
                      Icon(Icons.network_wifi),
                      TextButton(
                        child: const Text('KI'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const KI()),
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
                        backgroundImage: AssetImage('lib/Omniflix.jpeg'),
                      ),
                    ),
                    SizedBox(),
                    Column(
                      children: [
                        Text(
                          'Omniflix',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '(FLIX)',
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
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FlixCalculator(),
                        ));;
                  },
                  child: Padding(
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
