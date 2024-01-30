import 'package:flutter/material.dart';

void main() {
  runApp(TinhTongApp());
}

class TinhTongApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinh Tong App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TinhTongScreen(),
    );
  }
}

class TinhTongScreen extends StatefulWidget {
  @override
  _TinhTongScreenState createState() => _TinhTongScreenState();
}

class _TinhTongScreenState extends State<TinhTongScreen> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tính Tổng'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Số thứ nhất'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Số thứ hai'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int number1 = int.parse(number1Controller.text);
                int number2 = int.parse(number2Controller.text);
                setState(() {
                  sum = number1 + number2;
                });
              },
              child: Text('Tính Tổng'),
            ),
            SizedBox(height: 20),
            Text(
              'Tổng: $sum',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
