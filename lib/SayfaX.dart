import 'package:flutter/material.dart';
import 'package:odev_4/SayfaY.dart';

class SayfaX extends StatefulWidget {
  

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Sayfa X"),
      ),// AppBar
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
           children:[
            ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY()));
            },
            child: Text("Sayfa Y'ye git"),
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text("Geri git"),
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),
            primary: Colors.red[600]),
            ),
           ],
          
        ),
      ),
    );
  }
}