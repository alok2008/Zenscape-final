import 'package:flutter/material.dart';
import 'main.dart';
import 'ContactUs.dart';
import 'NetworksPage.dart';
import 'networklist.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String selectednetwork ='XKI';


  List<DropdownMenuItem<String>> getdropdownitems(){
    List<DropdownMenuItem<String>> dropdownitems=[];
for(int i=0;i<networklist.length;i++){
  String network= networklist[i];
  var newItem = DropdownMenuItem(child: Text(network),
  value:network);
  dropdownitems.add(newItem);
}
return dropdownitems;
  }
  @override
  Widget build(BuildContext context) {
    getdropdownitems();
    return Scaffold(
      appBar: AppBar(
        title: Text('DELEGATE'),
        backgroundColor: Colors.indigo,
      ),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text('STEP 1:  Network',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Choose Network',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left:38.0,),
                  child: Container(
                    color: Colors.white,
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10),

                        dropdownColor: Colors.white,
                        value: selectednetwork,
                        items: getdropdownitems() ,
                        onChanged: (value){
                          print(value);
                          if(value=='XKI'){
                            Row(children: [Text('ki',
                            style: TextStyle(
                              color: Colors.white)
                            ),],);
                          }
                          setState((){
                            selectednetwork = value!;});
                        },
                    ),
                  ),
                ),
              )],
          ),
    Text(' STAKE YOUR NETWORK HERE')]

      ),
    );
  }
}
