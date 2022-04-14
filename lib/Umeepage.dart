import 'package:flutter/material.dart';
import 'main.dart';
import 'UmeeCalculator.dart';
import 'kipage.dart';
import 'Flixpage.dart';
import 'MNTLPage.dart';
import 'Huahuapage.dart';
import 'AKSPage.dart';

class Umee extends StatefulWidget {
  const Umee({Key? key}) : super(key: key);

  @override
  State<Umee> createState() => _UmeeState();
}

class _UmeeState extends State<Umee> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UMEE'),
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
                              'DELEGATE UMEE',
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
                              backgroundImage: AssetImage('lib/Umee.jpeg'),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'UMEE',
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
                          padding: const EdgeInsets.fromLTRB(20,10,5,0),
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
                            padding: const EdgeInsets.fromLTRB(20,0,5,0),
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
                                textStyle: const TextStyle(fontSize: 10,
                                fontFamily: 'Poppins'),
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
                          // color: Colors.pink,
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
                  child: Column(
                    children: [
                      Text(
                        'Our stats on Umee',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFFBA93DA),
                        ),
                      ),

                      Container(
                        height: 50,
                      child: Expanded(
                        child: Row(

                          children: [Text('State')],),
                      ),
                      margin: EdgeInsets.fromLTRB(10,10,10,5),
                      decoration: BoxDecoration(

                          color: Color(0xCCFFFFFF),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                      Container(
                        height: 50,
                        child: Expanded(
                          child: Row(

                            children: [Text('Price')],),
                        ),
                        margin: EdgeInsets.fromLTRB(10,5,10,5),
                        decoration: BoxDecoration(


                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      Container(
                        height: 50,
                        child: Expanded(
                          child: Row(

                            children: [Text('Yield')],),
                        ),
                        margin: EdgeInsets.fromLTRB(10,5,10,5),
                        decoration: BoxDecoration(

                            color: Color(0xCCFFFFFF),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      Container(
                        height: 50,
                        child: Expanded(
                          child: Row(

                            children: [Text('Lockup')],),
                        ),
                        margin: EdgeInsets.fromLTRB(10,5,10,5),
                        decoration: BoxDecoration(

                            // color: Color(0xCCFFFFFF),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      Container(
                        height: 50,
                        child: Expanded(
                          child: Row(

                            children: [Text('Uptime')],),
                        ),
                        margin: EdgeInsets.fromLTRB(10,5,10,5),
                        decoration: BoxDecoration(

                            color: Color(0xCCFFFFFF),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      Container(
                        height: 50,
                        child: Expanded(
                          child: Row(

                            children: [Text('Fee')],),
                        ),
                        margin: EdgeInsets.fromLTRB(10,5,10,5),
                        decoration: BoxDecoration(


                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      Container(
                        height: 50,
                        child: Expanded(
                          child: Row(

                            children: [Text('Delegator Amount')],),
                        ),
                        margin: EdgeInsets.fromLTRB(10,5,10,5),
                        decoration: BoxDecoration(

                            color: Color(0xCCFFFFFF),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      Container(
                        height: 50,
                        child: Expanded(
                          child: Row(

                            children: [Text('Total Delegation')],),
                        ),
                        margin: EdgeInsets.fromLTRB(10,5,10,5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),

                    ]
                  ),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.pink,
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
                            builder: (context) => const UmeeCalculator(),
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