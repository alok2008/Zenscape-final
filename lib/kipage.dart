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
import 'NavigationDrawer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

class KI extends StatefulWidget {
  const KI({Key? key}) : super(key: key);

  @override
  State<KI> createState() => _KIState();
}

class _KIState extends State<KI> {
  dynamic kiinfbody;
  dynamic kiinflation;
  dynamic banktotalbody;
  dynamic banktotalfinal;
  dynamic stakingpoolbody;
  dynamic staking;
  dynamic APR;
  dynamic APR1;
  dynamic future;
  dynamic price1;
  dynamic pricebody;
  dynamic sharesbody;
  dynamic shares;
  dynamic bondedtknbody, bondedtkn;
  dynamic votingpwr;
  dynamic vp1;

  void initstate() {
    super.initState();
    addData();
  }

  Future<void> addData() async {
    dynamic finalAPR;

    API inflationki = await API(
        Uri.parse('https://api-kichain.cosmostation.io/v1/minting/inflation'));
    kiinfbody = await inflationki.getData();
    kiinflation = double.parse(jsonDecode(kiinfbody)['inflation']);

    API banktotal =
        await API(Uri.parse('https://api-kichain.cosmostation.io/v1/status'));
    banktotalbody = await banktotal.getData();
    banktotalfinal = double.parse(
        jsonDecode(banktotalbody)['total_supply_tokens']['supply'][11]
            ['amount']);

    API stakingpool =
        await API(Uri.parse('https://api-kichain.cosmostation.io/v1/status'));
    stakingpoolbody = await stakingpool.getData();
    staking = jsonDecode(stakingpoolbody)['bonded_tokens'];

    API price = await API(Uri.parse(
        'https://api-utility.cosmostation.io/v1/market/price?id=uxki'));
    pricebody = await price.getData();
    price1 = (jsonDecode(pricebody)[0]['prices'][0]['current_price']);

    API sharesC = await API(Uri.parse(
        'https://api-kichain.cosmostation.io/v1/account/delegations/ki164gq880gjyl83a9awnqnfap7650telz4e2q0cr'));
    sharesbody = await sharesC.getData();
    shares = double.parse((jsonDecode(sharesbody)[0]['shares']));

    API bondedtknC =
        await API(Uri.parse('https://api-kichain.cosmostation.io/v1/status'));
    bondedtknbody = await bondedtknC.getData();
    bondedtkn = (jsonDecode(bondedtknbody)['bonded_tokens']);
    // print(bondedtkn);

    votingpwr = (((shares) / bondedtkn) * 100);
    vp1 = votingpwr.toStringAsFixed(2);

    APR = kiinflation * banktotalfinal * 100 / staking;
    APR1 = APR.toStringAsFixed(2);
    setState(() {});
    return finalAPR;
  }

  // }

  @override
  Widget build(BuildContext context) {
    addData();

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          'KI',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: NavigationDrawerWidget(),
      body: APR1 == null
          ? Center(
              child: SpinKitDoubleBounce(
                color: Colors.blue,
                size: 60,
              ),
            )
          : RefreshIndicator(
              onRefresh: addData,
              child: PageView(
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
                                    child: Hero(
                                      tag: 'Kilogo',
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                            AssetImage('lib/Ki.png'),
                                      ),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 5, 0),
                                  child: Text(
                                    '$APR1 %',
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
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 0, 5, 0),
                                    child: Text(
                                      'Annual Percentage Rate (APR)',
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
                                  IconButton(
                                      onPressed: null,
                                      icon: const Icon(Icons.copy_outlined))
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
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.grey,
                                        padding: const EdgeInsets.all(10.0),
                                        primary: Colors.white,
                                        textStyle: const TextStyle(
                                            fontSize: 10,
                                            fontFamily: 'Poppins'),
                                      ),
                                      onPressed: () {},
                                      child: const Text('Delegate With Ledger'),
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
                                              builder: (context) =>
                                                  KICalculator(
                                                APR: APR1,
                                                Price: price1,
                                                Staking: staking,
                                                votingpower: vp1,
                                              ),
                                            ));
                                        ;
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text(
                                          'Stake >',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color(0xFFE3F6FD)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child:
                                    Lottie.asset('asset/9261-scroll-down.json'),
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
                                    3, // Move to bottom 10 Vetically
                                  ),
                                )
                              ],
                              gradient: LinearGradient(colors: [
                                Color(0xFFE3F6FD),
                                Color((0xFFE8DCF8))
                              ]),
                              color: Color(0xCCFFFFFF).withOpacity(1),
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
                                          backgroundColor:
                                              Colors.lightGreenAccent,
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
                                        '$price1',
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
                                              builder: (context) =>
                                                  KICalculator(
                                                APR: APR1,
                                                Price: price1,
                                                Staking: staking,
                                                votingpower: vp1,
                                              ),
                                            ));
                                        ;
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text(
                                          'Stake >',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color(0xFFE3F6FD)),
                                      ),
                                    ),
                                  ),
                                ],
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
                              gradient: LinearGradient(colors: [
                                Color(0xFFE3F6FD),
                                Color((0xFFE8DCF8))
                              ]),
                              color: const Color(0xCCFFFFFF).withOpacity(1),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
