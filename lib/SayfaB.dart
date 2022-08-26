import 'package:flutter/material.dart';
import 'package:odev_4/SayfaY.dart';

class SayfaB extends StatefulWidget {
  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Sayfa B"),
      ),// AppBar
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
           children:[
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY()));
            }, 
            child: Text("Sayfa Y"),
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
            ),
            const SizedBox(height: 15,),
             ElevatedButton(onPressed: (){
              Navigator.pop(context);
             }, 
            child: Text("Geri git"),
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),
            primary: Colors.red[600]
            ),
            ),
           
           ],
          
        ),
      ),
    );

  }
}