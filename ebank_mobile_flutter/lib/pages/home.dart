import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/bank.jpg'),
              const SizedBox(height: 30),
              Column(
                children:  [
                  const Text(
                    'About bank',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                  const SizedBox(height: 30),
                  Card(
                    elevation: 6,
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.white)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: SizedBox(
                        width: 370,
                        height: 115,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // const Text(
                  //   'Digital bank',
                  //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo),
                  // ),
                  // const SizedBox(height: 30),
                  const Text(
                    'By : Fatima Zahra HASBI',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
                    child: SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text("Subscribe"),
                    onPressed: (){},
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
