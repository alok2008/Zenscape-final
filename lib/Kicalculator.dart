import 'package:flutter/material.dart';
import 'Stakingpage.dart';

class KICalculator extends StatefulWidget {
  const KICalculator({Key? key}) : super(key: key);

  @override
  State<KICalculator> createState() => _KICalculatorState();
}

class _KICalculatorState extends State<KICalculator> {
  TextEditingController nameController = TextEditingController();
  double _ki = 10;
  double ki = 0;
  @override
  Widget build(BuildContext context) {
    double _value = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('KI CALCULATOR',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(child:

      Container(
      height: 1000,
      width: 400,

      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                      child: Column(
                    children: [
                     Row(children: [Padding(
                       padding: const EdgeInsets.all(15),
                       child: Text(
                         'DELEGATED ASSET',
                         style: TextStyle(
                           fontSize: 11,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),
                       ),
                     ),],),
                      Row(children: [Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'APR',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),],),
                      Row(children: [Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'VOTING POWER',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),],),
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
          Text(
            'Amount in KI',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Container(
            child: TextField(
              controller: nameController,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Amount in KI',
                border: OutlineInputBorder(),
              ),
              onChanged: (_ki) {
                setState(() {
                  ki = double.parse(_ki);

                  print(ki);
                });
              },
              keyboardType: TextInputType.number,
            ),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color(0xFF1D1e33),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Icon(
            Icons.autorenew,
            color: Colors.pink,
            size: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Text(
              'Amount in USD',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: TextField(
              controller: nameController,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Amount in USD',
                border: OutlineInputBorder(),
              ),
              onChanged: (_ki) {
                setState(() {
                  ki = double.parse(_ki);

                  print(ki);
                });
              },
              keyboardType: TextInputType.number,
            ),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color(0xFF1D1e33),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          // Expanded(
          //   child: Container(
          //     child: Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(10),
          //           child: Text(
          //             ki.toStringAsFixed(1),
          //             style: TextStyle(
          //               fontSize: 11,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //     margin: EdgeInsets.fromLTRB(18, 30, 18, 30),
          //     decoration: BoxDecoration(
          //       color: Color(0xFF1D1e33),
          //       borderRadius: BorderRadius.circular(10.0),
          //     ),
          //   ),
          // ),
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
          ),
        ],
      ),
    ),),);
  }
}
