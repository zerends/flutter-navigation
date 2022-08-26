import 'package:flutter/material.dart';
import 'package:odev_4/main.dart';

class SayfaY extends StatefulWidget {
  

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Sayfa Y"),
      ),// AppBar
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
           children:[
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa()));
            }, 
            child: Text("Ana Sayfaya git"),
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