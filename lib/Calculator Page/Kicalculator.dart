import 'package:flutter/material.dart';

class KICalculator extends StatefulWidget {
  KICalculator({this.APR, this.Price, this.Staking});

  dynamic APR;
  dynamic Price;
  dynamic Staking;

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


  void initState() {
    super.initState();
    thisAPR = widget.APR;
    thisPrice = widget.Price;
    thisStaking = widget.Staking;
  }

  @override
  Widget build(BuildContext context) {
  print(thisPrice);
    return Scaffold(
      appBar: AppBar(
        title: const Text('KI CALCULATOR',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  'DELEGATED ASSET - $thisStaking',
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                                  'APR - $thisAPR',
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'VOTING POWER',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
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
              const Text(
                'Amount in KI',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                child: TextField(
                  controller: kiController,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Amount in KI',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (abc) {
                    setState(() {

                      usdController.text = (double.parse(abc) * double.parse('$thisPrice')).toString();


                    });
                  },
                  keyboardType: TextInputType.number,
                ),
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFBA93DA),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              const Icon(
                Icons.autorenew,
                color: Colors.pink,
                size: 30.0,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  'Amount in USD',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: TextField(
                  controller: usdController,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  enabled: true,
                  decoration: const InputDecoration(
                    hintText: 'Amount in USD',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {

                    setState(() {
                      kiController.text = ((double.parse(value) / double.parse('$thisPrice'))).toString();

                    });
                  },
                  keyboardType: TextInputType.number,
                ),
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: const Color(0xAFBA93DA),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text('Stake >'),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
