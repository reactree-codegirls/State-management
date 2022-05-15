import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/namesProvider.dart';
import 'package:state_management/thirdScreen.dart';

import 'main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({ Key? key }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Second Screen")
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Consumer<NamesProvider>(
                builder:(ctx,namesProvider,child)=> ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: ((context, index) => ListTile(
                        title: Text(namesProvider.names[index]),
                        trailing: IconButton(
                          onPressed: () {
                           
                              namesProvider.names.removeAt(index);
                            
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      )),
                  itemCount: namesProvider.names.length,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(
          builder: (_)=>ThirdScreen()
        )),
        child: Text("Navigate"),
      ),
    );
  }
}