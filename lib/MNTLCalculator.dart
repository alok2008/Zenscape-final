import 'package:flutter/material.dart';
import 'Stakingpage.dart';

class MNTLCalculator extends StatefulWidget {
  const MNTLCalculator({Key? key}) : super(key: key);

  @override
  State<MNTLCalculator> createState() => _MNTLCalculatorState();
}

class _MNTLCalculatorState extends State<MNTLCalculator> {
  TextEditingController nameController = TextEditingController();
  double _ki = 10;
  double ki = 0;
  @override
  Widget build(BuildContext context) {
    double _value = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('MNTL CALCULATOR',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(


        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Text(
                              'DELEGATED ASSET',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          ),
                        ],
                      )),
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1e33),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              Expanded(
                child: Container(
                  child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Text(
                              'APR',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
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
          Expanded(
            child: Container(
              child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'COMMISSION ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
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
          Text(
            'Amount in MNTL',
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
                hintText: 'Amount in MNTL',
                border: OutlineInputBorder(),
                labelText: 'Amount in MNTL',
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
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      ki.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(18, 30, 18, 30),
              decoration: BoxDecoration(
                color: Color(0xFF1D1e33),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
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
                            builder: (context) => const MNTLCalculator(),
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
    );
  }
}
