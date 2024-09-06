import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hanzla Numan is a good boy"),
      ),
      body:
          //  Center(
          //     child: Container(
          //   height: 200,
          //   width: 200,
          //   color: Colors.deepOrangeAccent,
          //   child: const Center(
          //       child: Text(
          //     "This is Child",
          //     style: TextStyle(
          //         fontSize: 23,
          //         color: Colors.blueGrey,
          //         fontWeight: FontWeight.w500,
          //         backgroundColor: Colors.black26),
          //   )),
          // )
          // child: TextButton(
          //     onPressed: () {
          //       print('Text Button');
          //     },
          //     onLongPress: () {
          //       print('Long Pressed');
          //     },
          //     child: Text('Text Button')),
          // child: ElevatedButton(
          //     onPressed: () {
          //       print('Elevated Button');
          //     },
          //     onLongPress: () {
          //       print('Long Pressed');
          //     },
          //     child: Text('Elevated Button')),
          // child: OutlinedButton(
          //     onPressed: () {
          //       print('Outlined Button');
          //     },
          //     onLongPress: () {
          //       print('Long Pressed');
          //     },
          //     child: Text('Outlined Button')),
          // child: Container(child: Image.asset('assets/images/image.png'),),
Container(height: 300, child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'A',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'B',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'C',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'D',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'E',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),)
         
      // )
    );
  }
}
