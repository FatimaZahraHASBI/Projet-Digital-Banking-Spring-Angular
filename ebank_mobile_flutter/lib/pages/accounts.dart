import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/Account.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {

  List<Account> accounts = [];
  Future<List<Account>> _getAccounts() async {

    var data = await http.get(Uri.parse('http://192.168.56.1:8085/accounts'));
    var jsonData = json.decode(data.body);

    for(var a in jsonData){

      if(a['type']=="SavingAccount"){
        Account savingAccount = Account(
            a['id'],
            a['balance'],
            a['createdAt'],
            a['status'],
            a['customerDTO'],
            a['interestRate'],
            0,
            a['type']);
        accounts.add(savingAccount);
      }else{
        {
          Account currentAccount = Account(
              a['id'],
              a['balance'],
              a['createdAt'],
              a['status'],
              a['customerDTO'],
              0,
              a['overDraft'],
              a['type']);
          accounts.add(currentAccount);
        }
      }
    }
    return accounts;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: _getAccounts(),
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
                  title: Text(snapshot.data[id].type),
                  // subtitle: Text(snapshot.data[id].balance),
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