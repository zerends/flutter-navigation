import 'package:flutter/material.dart';
import 'package:odev_4/SayfaX.dart';

import 'SayfaA.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}




class _AnaSayfaState extends State<AnaSayfa>{

 @override
 Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Ana Sayfa"),
      ),// AppBar
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
           children:[
            
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));
            }, 
            child: Text("Sayfa A'ya git"),
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
            ),
            const SizedBox(height: 15,),
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaX()));
             }, 
            child: Text("Sayfa X'ye git"),
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
            ),
            
           ],
        ),
      ),
    );

  }
}