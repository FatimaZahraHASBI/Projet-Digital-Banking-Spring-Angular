import 'package:ebank_mobile_flutter/models/Customer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {

  List<Customer> customers = [];
  Future<List<Customer>> _getCustomers() async {

    var data = await http.get(Uri.parse('http://192.168.56.1:8085/customers'));
    var jsonData = json.decode(data.body);

    for(var c in jsonData){
      Customer customer = Customer(
        id: c['id'].toString(),
        name: c['name'],
        email: c['email'],
      );
      customers.add(customer);
    }
    return customers;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder(
          future: _getCustomers(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.data == null){
              return const Center(
                  child: Text("Loading...")
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int id) {
                  return Card (child:ListTile(
                    leading: const CircleAvatar(backgroundImage:
                    AssetImage("assets/images/bank.jpg")),
                    title: Text(snapshot.data[id].name),
                    subtitle: Text(snapshot.data[id].email),
                    onTap: (){},
                  ));
                },
              );
            }
          },
        ),
    );
  }
}
