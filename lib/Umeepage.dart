import 'package:flutter/material.dart';
import 'package:zenscape_final/NavigationDrawer.dart';
import 'main.dart';
import 'Calculator Page/UmeeCalculator.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UMEE'),
        backgroundColor: Color(0xFF0A0E40),
      ),
      drawer: NavigationDrawerWidget(),

      body: PageView (
        scrollDirection: Axis.vertical,
        children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 600,
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
                    ), Row(
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
                    gradient: LinearGradient(colors: [Color(0xFFE3F6FD), Color((0xFFE8DCF8))]),

                    borderRadius: BorderRadius.circular(10.0)),
              ),

            ),

          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: 500,
                height: 600,
                child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Table(children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'State',
                                  style: const TextStyle(
                                    fontSize: 15,

                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Active',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Price',
                                  style: const TextStyle(
                                    fontSize: 15,

                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'price1',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Yield',
                                  style: const TextStyle(
                                    fontSize: 15,

                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '--',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Lock Up',
                                  style: const TextStyle(
                                    fontSize: 15,

                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '--',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Uptime',
                                  style: const TextStyle(
                                    fontSize: 15,

                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '--',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Fee',
                                  style: const TextStyle(
                                    fontSize: 15,

                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '--',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Delegator Amount',
                                  style: const TextStyle(
                                    fontSize: 15,

                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '--',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Total Delegation',
                                  style: const TextStyle(
                                    fontSize: 15,

                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '--',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),

                          ]),
                        ),
                      ],
                    )),
                margin: const EdgeInsets.all(20.0),
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
                    gradient: LinearGradient(colors: [Color(0xFFE3F6FD), Color((0xFFE8DCF8))]),

                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ],
        ),


      ],),);
  }
}
