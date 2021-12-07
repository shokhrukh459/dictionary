import 'package:flutter/material.dart';
import 'models/words.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/second": (context) => const DetailPage(),
      },

    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    leading: Icon(Icons.menu),
    title: Text("Searching...", style: TextStyle(
      fontWeight: FontWeight.w300 ,
      color: Colors.white54,
    ),),
    actions: [
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Icon(Icons.mic),
    ),
    Icon(Icons.replay_circle_filled),
      SizedBox(width: 16,)
    ],
    ),
    body: ListView.builder(
    itemCount: Word.words.length,
    itemBuilder: (BuildContext context, int index){
    return InkWell(
    onTap: ()=>{
    Navigator.pushNamed(context, "/second")
    },
    child: Padding(
      padding: const EdgeInsets.only(bottom: 8.0,),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(2, 2)
            )
          ]
        ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Text( Word.words[index].word, style: TextStyle(
            fontSize: 20,
          ), ),
        ),
      ),

      ),
    )
    );
    }
    ) ,
    );
  }
}


class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meaning of this word"),
      ),
      body: Container(
        ) ,
    );
  }
}

