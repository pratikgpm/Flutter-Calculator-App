import 'package:flutter/material.dart';
import 'package:untitled/widgets/tx.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var count = 1;

  // var  ans;
  var edit1 = TextEditingController();
  var edit2 = TextEditingController();
  dynamic ans = 0;

  void incr() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Answer is :   ',
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'myCustom')),
                Text(
                  "${ans.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                  ),
                )
              ],
            ),
            Center(
              child: Container(
                width: 300,
                margin: EdgeInsets.only(top: 80),
                child: TextField(
                  controller: edit1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffix: InkWell(
                        onTap: (){
                          edit1.clear();
                        },
                        child: Icon(Icons.refresh,color: Colors.grey,size: 22,)),
                      hintText: 'Enter First No',
                      hintStyle: TextStyle(color: Colors.grey.shade300),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.lightGreenAccent)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(color: Colors.red),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(bottom: 30),
              child: TextField(
                controller: edit2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    suffix: InkWell(
                        onTap: (){
                        edit2.clear();
                        },
                        child: Icon(Icons.refresh,color: Colors.grey,size: 22,)),
                    hintText: 'Enter Second No',
                    hintStyle: TextStyle(color: Colors.grey.shade300),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.lightGreenAccent,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    edit1.text.toString() == '' && edit2.text.toString() == ''
                        ? setState(() {
                            ans = 0;
                          })
                        : setState(() {
                            var first;
                            var second;
                            edit1.text.toString() == ''
                                ? first = 0
                                : first = int.parse(edit1.text.toString());
                            edit2.text.toString() == ''
                                ? second = 0
                                : second = int.parse(edit2.text.toString());
                            ans = first + second;
                          });
                  },
                  child: Text(
                    '+',
                    style: sec(),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        var first;
                        var second;
                        edit1.text.toString() == ''
                            ? first = 0
                            : first = int.parse(edit1.text.toString());
                        edit2.text.toString() == ''
                            ? second = 0
                            : second = int.parse(edit2.text.toString());
                        ans = first - second;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    child: Text(
                      '-',
                      style: sec(),
                    )),
                ElevatedButton(
                    onPressed: () {
                      edit1.text.toString() == '' && edit2.text.toString() == ''
                          ? setState(() {
                              ans = 0;
                            })
                          : setState(() {
                              var first;
                              var second;
                              edit1.text.toString() == ''
                                  ? first = 0
                                  : first = int.parse(edit1.text.toString());
                              edit2.text.toString() == ''
                                  ? second = 0
                                  : second = int.parse(edit2.text.toString());
                              ans = first * second;
                            });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    child: Text('*', style: sec())),
                ElevatedButton(
                    onPressed: () {
                      edit1.text.toString() == '' && edit2.text.toString() == ''
                          ? setState(() {
                              ans = 0;
                            })
                          : setState(() {
                              var first;
                              var second;
                              edit1.text.toString() == ''
                                  ? first = 0
                                  : first = int.parse(edit1.text.toString());
                              edit2.text.toString() == ''
                                  ? second = 0
                                  : second = int.parse(edit2.text.toString());
                              ans = first / second;
                            });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    child: Text('/', style: sec())),
              ],
            ),

          ],

        ));
  }
}
