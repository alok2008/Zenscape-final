import'package:flutter/material.dart';

class Stake extends StatelessWidget {
  const Stake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      title: Text('VALIDATOR DETAILS'),
      backgroundColor: Colors.indigo,
    ),

      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('lib/cosmostation.png'),
                      ),
                    ),
                    SizedBox(),
                    Row(
                      children: [Column(
                        children: [
                          Text(
                            'Cosmostation',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),Row(
                            children:[Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                              ),
                            ),


              ]),
                        ],
                      ),
                    ]),
                  ],
                ),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xFF1D1e33),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ],
        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: ElevatedButton(onPressed:() {}, child: Padding(
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
