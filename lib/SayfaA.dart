import 'package:flutter/material.dart';
import 'package:odev_4/SayfaB.dart';


class SayfaA extends StatefulWidget {
  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Sayfa A"),
      ),// AppBar
      body:Center(
        child:Column(
          
          mainAxisAlignment:MainAxisAlignment.center,
            children:[ 
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
            }, 
            child: Text("Sayfa B'ye git"),
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