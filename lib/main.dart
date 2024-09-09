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

var dummyData = ['Ali', 'Ahmad', 'Hanzla', 'Hamza', 'Tayyab'];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hanzla Numan is a bad boy"),
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
            //
            Center(
          child: Container(
              child: Padding(
            padding: EdgeInsets.only(bottom: 11),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.brown,
                    child: ListView.separated(
                      itemBuilder: (content, index) {
                        return Text(
                          dummyData[index],
                          style: TextStyle(
                              fontSize: 21, color: Colors.amberAccent),
                        );
                      },
                      separatorBuilder: (content, index) {
                        return Divider(
                          thickness: 2,
                          height: 20,
                        );
                      },
                      scrollDirection: Axis.vertical,
                      itemCount: dummyData.length,
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.cyanAccent,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 170,
                            height: 200,
                            color: Colors.blueGrey,
                          ),
                          Container(
                            width: 170,
                            height: 200,
                            color: Colors.black38,
                          ),
                          Container(
                            width: 170,
                            height: 200,
                            color: Colors.black12,
                          ),
                          Container(
                            width: 170,
                            height: 200,
                            color: Colors.amberAccent,
                          ),
                          Container(
                            width: 170,
                            height: 200,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.green,
                  ),
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
          )),
        )

        // )
        );
  }
}
