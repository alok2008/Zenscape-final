import 'package:flutter/material.dart';
import 'main.dart';
import 'Kicalculator.dart';
import 'Umeepage.dart';
import 'Flixpage.dart';
import 'MNTLPage.dart';
import 'Huahuapage.dart';
import 'AKSPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class KI extends StatefulWidget {
  const KI({Key? key}) : super(key: key);

  @override
  State<KI> createState() => _KIState();
}

class _KIState extends State<KI> {
  void getData() async {
    var url =
        Uri.parse("https://api-utility.cosmostation.io/v1//params/akashnet-2");
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var key =
          jsonDecode(data)['Params']['minting_params']['params']['mint_denom'];
      print(key);
    } else {
      print(response.statusCode);
    }
  }

  double _value = 0;
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      appBar: AppBar(
        title: Text('KI'),
        backgroundColor:Color(0xFF0A0E40),
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
                      Icon(Icons.kayaking_sharp),
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
                      Icon(Icons.umbrella),
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
                      Icon(Icons.outbond),
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
                      Icon(Icons.attach_money),
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
                      Icon(Icons.location_searching),
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
                      Icon(Icons.cloud),
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
                        radius: 40,
                        backgroundImage: AssetImage('lib/Ki.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            'KI',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          '(XKI)',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
                // margin: EdgeInsets.all(20.0),
                // decoration: BoxDecoration(
                //     boxShadow: [
                //       BoxShadow(
                //         // color: Colors.pink,
                //         color: Colors.white24,
                //         blurRadius: 1.0, // soften the shadow
                //         spreadRadius:0, //extend the shadow
                //         offset: Offset(
                //           3, // Move to right 10  horizontally
                //           3, // Move to bottom 10 Vertically
                //         ),
                //       )
                //     ],
                //     color: Color(0xFF1D1e33),
                //     borderRadius: BorderRadius.circular(10.0)),
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
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
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
              color: Colors.black,
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
              color: Colors.black,
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
                          builder: (context) => const KICalculator(),
                        ));
                    ;
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
