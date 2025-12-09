import 'package:flutter/material.dart';
void main(){
  runApp(NewApp());
}

class NewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          primaryColor:Colors.orange,
      ),
        home: cardApp(),
    );
  }
}

class cardApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Connect"),
        backgroundColor: Colors.orange,
        ),
      body: Container(
        margin: EdgeInsets.all(22),
          height: 250,
          width: 370,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
              color: Colors.black,
               blurRadius: 18,
                  spreadRadius: 4,
                  offset: Offset(0,6),
               )
              ]
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200,top: 8,right: 5),
              child: Text("📞 +4352678954", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/boy_avatar.png"),
                    radius: 60,
                    backgroundColor: Colors.grey,
                  ),
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("👨‍💼 John Doe", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("🏢 John Corporation", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("🏠 Phagwara ,Punjab", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),

             SizedBox(height: 10,),

            Container(
              height: 5,
              width: double.infinity,
              color: Colors.black,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.corporate_fare, size: 25, ),
                    Text("www.Johncorporation.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                  ],
                ),
                 SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email,size: 26, ),
                    Text("John123@gmail.com",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            )
          ],
        ),
        ),
      );
  }
}