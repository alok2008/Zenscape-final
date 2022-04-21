import 'package:flutter/material.dart';
import 'package:zenscape_final/KiDashboard.dart';

class KICalculator extends StatefulWidget {
  KICalculator({this.APR, this.Price, this.Staking, this.votingpower});

  dynamic APR;
  dynamic Price;
  dynamic Staking;
  dynamic votingpower;

  @override
  State<KICalculator> createState() => _KICalculatorState();
}

class _KICalculatorState extends State<KICalculator> {
  TextEditingController kiController = TextEditingController();
  TextEditingController usdController = TextEditingController();

  double ki = 0;
  dynamic thisAPR;
  dynamic thisPrice;
  dynamic thisStaking;
  dynamic value;
  dynamic thisvotingpower;
  dynamic dailyreward;
  dynamic monthlyreward;
  dynamic annualreward;

  void initState() {
    super.initState();
    setState(() {
      updateUI();
    });
  }

  Future<void> updateUI() async {
    thisAPR = widget.APR;
    thisPrice = widget.Price;
    thisStaking = widget.Staking;
    thisvotingpower = widget.votingpower;
   dailyreward = ((double.parse(kiController.text)*double.parse(thisAPR)/100)/365).toStringAsFixed(4);
    monthlyreward = ((double.parse(kiController.text)*double.parse(thisAPR)/100)/12).toStringAsFixed(4);
    annualreward = ((double.parse(kiController.text)*double.parse(thisAPR)/100)).toStringAsFixed(4);

  }


  @override
  Widget build(BuildContext context) {
    updateUI();
    return Scaffold(
      appBar: AppBar(
        title: const Text('KI CALCULATOR',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        backgroundColor: Color(0xFF0A0E40),
      ),
      body: RefreshIndicator(
        onRefresh: updateUI,
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/register.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              height: 730,
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
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Table(children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Delegated Asset',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '$thisStaking',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'APR',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '$thisAPR',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Voting Power',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '$thisvotingpower',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
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
                              color: const Color(0xFF1D1e33),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
                        child: const Text(
                          'Amount in KI',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: TextField(
                      controller: kiController,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Amount in KI',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (abc) {
                        setState(() {
                          usdController.text =
                              (double.parse(abc) * double.parse('$thisPrice'))
                                  .toStringAsFixed(2);
                        });
                      },
                      keyboardType: TextInputType.number,
                    ),
                    margin: const EdgeInsets.fromLTRB(20.0, 8, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.autorenew,
                      color: Colors.pink,
                      size: 40.0,
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Amount in USD',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: TextField(
                      controller: usdController,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      enabled: true,
                      decoration: const InputDecoration(
                        hintText: 'Amount in USD',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          kiController.text = ((double.parse(value) /
                                  double.parse('$thisPrice')))
                              .toStringAsFixed(2);
                        });
                      },
                      keyboardType: TextInputType.number,
                    ),
                    margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20, 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Center(
                              child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Table(children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Daily Reward',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '$dailyreward',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Monthly Reward',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '$monthlyreward',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Annual Reward',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '$annualreward',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
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
                              color: const Color(0xFF1D1e33),
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
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('Stake >'),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF444B59)),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
