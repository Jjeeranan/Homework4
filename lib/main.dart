import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var num = [ ['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9']];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock_outline, size: 80.0, color: Colors.black54),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'กรุณาใส่รหัสผ่าน', style: TextStyle(fontSize: 20,color: Colors.black54,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(var i = 0; i< num.length; i++)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildButton4R(num[i]),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _emptyBot(),
                      _buildButton4('0'),
                      _iconBot(),
                    ],
                  ),
                  Expanded(child: Container(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: Text('ลืมรหัสผ่าน',style: TextStyle(color: Colors.blue),),
                    ),
                  ),
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}
Widget _buildButton4(String N) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black54, width: 1.0),
      ),
        child: Align(
          alignment: Alignment.center,
          child: Text(N,style: TextStyle(fontSize: 18,color: Colors.black),),
      ),
    ),
  );
}
Widget _buildButton4R (List<String>num){
  return Row(
    children: num.map((item) {
      return _buildButton4(item);
    }
    )
        .toList(),
  );
}
Padding _emptyBot(){
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      width: 50.0,
      height: 50.0,
    ),
  );
}
Padding _iconBot(){
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: SizedBox(
      width: 50.0,
      height: 50.0,
      child: Icon(
        Icons.backspace_outlined,
        color: Colors.black54,
      ),
    ),
  );
}