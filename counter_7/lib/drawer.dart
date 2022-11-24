import 'package:counter_7/Model/budget.dart';
import 'package:counter_7/List_budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/Form_budget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/mywatchlist.dart';


class AppDrawer extends StatefulWidget {
  late List<Budget> myBudgetList;
  AppDrawer({super.key, required this.myBudgetList});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer>{


  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: [
          // Menambahkan  menu
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // wiring menu ke halaman utama
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: "Program Counter",)),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // wiring menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BudgetForm(title: "Form Budget",)),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // wiring menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BudgetList( myBudgetList: widget.myBudgetList,)),
              );
            },
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap: () {
              // wiring menu ke halaman watchlist
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WatchlistPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}