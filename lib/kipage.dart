import 'package:flutter/material.dart';
import 'main.dart';
import 'Calculator Page/Kicalculator.dart';
import 'Umeepage.dart';
import 'Flixpage.dart';
import 'MNTLPage.dart';
import 'Huahuapage.dart';
import 'AKSPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'APIs/Apis.dart';

class KI extends StatefulWidget {
  const KI({Key? key}) : super(key: key);

  @override
  State<KI> createState() => _KIState();
}

class _KIState extends State<KI> {
  dynamic kiprice;
  dynamic updatedKIprice1;

  void initstate() {
    super.initState();
    addData();
  }

  // getData() async {

  void addData() async {
    API apiki = await API(Uri.parse(
        'https://api-utility.cosmostation.io/v1/market/price?id=uxki'));

    kiprice = await apiki.getData();


    updatedKIprice1 = kiprice;

  }

  // print(kiprice);
  // var url =
  //     Uri.parse("https://api-utility.cosmostation.io/v1//params/akashnet-2");
  // http.Response response = await http.get(url);
  // if (response.statusCode == 200) {
  //   String data = response.body;
  //   var key =
  //       jsonDecode(data)['Params']['minting_params']['params']['mint_denom'];
  //   print(key);
  // } else {
  //   print(response.statusCode);
  // }

  // }

  @override
  Widget build(BuildContext context) {
    addData();

    return Scaffold(
      appBar: AppBar(
        title: Text('KI'),
        backgroundColor: Color(0xFF0A0E40),
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
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  width: 1000,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              'DELEGATE KI',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFFBA93DA),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('lib/Ki.png'),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'KI',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 5, 0),
                          child: Text(
                            '346.1%',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                            child: Text(
                              'Annual percentage rate (APR)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),

                          ),
                          Row(
                            children: [
                              Text(
                                'inf $kiprice',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Our validator address',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Connect Ledger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                padding: const EdgeInsets.all(10.0),
                                primary: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 10, fontFamily: 'Poppins'),
                              ),
                              onPressed: () {},
                              child: const Text('Delegate With Ledger'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 1.0, // soften the shadow
                          spreadRadius: 0, //extend the shadow
                          offset: Offset(
                            3, // Move to right 10  horizontally
                            3, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      color: Color(0xCCFFFFFF),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 550,
                  width: 1000,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Our stats on KI',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFFBA93DA),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('State'),
                            )
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        decoration: BoxDecoration(
                            color: Color(0xCCFFFFFF),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Price'),
                            )
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Yield'),
                            )
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        decoration: BoxDecoration(
                            color: Color(0xCCFFFFFF),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Lockup'),
                            )
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Uptime'),
                            )
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        decoration: BoxDecoration(
                            color: Color(0xCCFFFFFF),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Fee'),
                            )
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Delegator Amount'),
                            )
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        decoration: BoxDecoration(
                            color: Color(0xCCFFFFFF),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Total Delegation'),
                            )
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ]),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 1.0, // soften the shadow
                          spreadRadius: 0, //extend the shadow
                          offset: Offset(
                            3, // Move to right 10  horizontally
                            3, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      color: Color(0xCCFFFFFF),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ],
          ),
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
      ),
    );
  }
}
