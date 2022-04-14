import 'package:flutter/material.dart';
import 'package:zenscape_final/validatorlist.dart';
import 'Stakingpage.dart';

class Validator extends StatefulWidget {
  const Validator({Key? key}) : super(key: key);

  @override
  State<Validator> createState() => _ValidatorState();
}

class _ValidatorState extends State<Validator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Active Validators :',
            style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        backgroundColor: Colors.indigo,
      ),

        body: Column(
          children: [
            ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  for(int i=0;i<validatorlist.length;i++)
                Container(
                  child: TextButton(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            validatorlist[i],
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          '>>',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Stake()),
                    );


                    },
                  ),
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1e33),
                      borderRadius: BorderRadius.circular(10.0)),
                ),



            ])
          ],

        )










    );
  }
}
