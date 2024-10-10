import 'package:classic/ui_helper/first.dart';
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
          textTheme: TextTheme(
              headlineMedium: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.blue),
              headlineLarge:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
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
var email = TextEditingController();
var password = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    var colorsGrid = [
      Colors.amber,
      Colors.black38,
      Colors.cyan,
      Colors.deepOrange,
      Colors.deepPurple,
      Colors.green,
      Colors.grey
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Title for HANX",
            style: TextStyle(fontFamily: "CustomFont1"),
          ),
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
          child: Container(
              child: Padding(
            padding: EdgeInsets.only(bottom: 11),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // width: 400,
                    height: 200,
                    color: Colors.white24,
                    child: ListView.separated(
                      itemBuilder: (content, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/image.png'),
                            radius: 30,
                          ),
                          title: Text(
                            dummyData[index],
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(color: Colors.brown),
                          ),
                          subtitle: Text(
                            'List no .$index',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          trailing: Icon(Icons.add_a_photo),
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
                    // width: 400,
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
                    // width: 400,
                    height: 200,
                    color: Colors.green,
                    child: Center(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 4,
                                color: const Color.fromARGB(255, 167, 141, 63)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black26,
                                  spreadRadius: 11)
                            ]),
                      ),
                    ),
                  ),
                  Container(
                    // width: 400,
                    height: 200,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 200,
                            color: const Color.fromARGB(255, 254, 8, 62),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 200,
                            color: const Color.fromARGB(255, 56, 45, 14),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 200,
                            color: const Color.fromARGB(255, 42, 255, 220),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: 200,
                            color: const Color.fromRGBO(20, 125, 170, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: Center(
                          child: Card(
                              elevation: 20,
                              shadowColor: Colors.deepOrangeAccent,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Dummy Text',
                                  style: TextStyleCustom1(),
                                ),
                              ))),
                      margin: EdgeInsets.only(top: 20),
                      height: 200,
                      color: Colors.amber,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: email,
                          enabled: true,
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.deepPurpleAccent, width: 3)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 2)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.black12, width: 2)),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.phone,
                          controller: password,
                          obscureText: true,
                          enabled: true,
                          decoration: InputDecoration(
                              hintText: "Enter Password",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.deepPurpleAccent,
                                      width: 3)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.deepPurple, width: 2)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.black12, width: 2)),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    print("show");
                                  },
                                  icon: Icon(Icons.remove_red_eye))),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              print(email.text.toString());
                              print(password.text.toString());
                            },
                            child: Text("Sign in"))
                      ],
                    )),
                  ),
                  Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${time}'),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {});
                              },
                              child: Text('Get time')),
                          ElevatedButton(
                              onPressed: () async {
                                var timebypicker = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                    initialEntryMode: TimePickerEntryMode.dial);
                                print(timebypicker);
                              },
                              child: Text('Select time')),
                        ],
                      )),
                  // Container(
                  //   height: 200,
                  //   child: GridView.count(
                  //     crossAxisCount: 5,
                  //     children: [
                  //       Container( color: colorsGrid[0]),
                  //       Container( color: colorsGrid[1]),
                  //       Container( color: colorsGrid[2]),
                  //       Container( color: colorsGrid[3]),
                  //       Container( color: colorsGrid[4]),
                  //       Container( color: colorsGrid[5]),
                  //       Container( color: colorsGrid[3]),
                  //     ],
                  //   ),
                  // ),
                  Container(
                      height: 200,
                      child: GridView.extent(
                        maxCrossAxisExtent: 100,
                        children: [
                          Container(color: colorsGrid[0]),
                          Container(color: colorsGrid[1]),
                          Container(color: colorsGrid[2]),
                          Container(color: colorsGrid[3]),
                          Container(color: colorsGrid[4]),
                          Container(color: colorsGrid[5]),
                          Container(color: colorsGrid[3]),
                        ],
                      )),
                  Container(
                      height: 300,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                                  itemCount: colorsGrid.length,
                          itemBuilder: (context, index) {
                            return Container(color: colorsGrid[index]);
                          })),
                ],
              ),
            ),
          )),
        ))

        // )
        );
  }
}
