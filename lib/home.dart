// ignore_for_file: prefer_const_constructors

import 'package:aprenda_ingles/pages/bichos.dart';
import 'package:aprenda_ingles/pages/numeros.dart';
import 'package:aprenda_ingles/pages/vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff795548),
          title: const Text("Aprenda Inglês"),
          bottom: TabBar(
              indicatorWeight: 4,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              controller: _tabController,
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                Tab(
                  text: "Bichos",
                ),
                Tab(
                  text: "Números",
                ),
                Tab(
                  text: "Vogais",
                ),
              ]),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: TabBarView(controller: _tabController, children: [
          Bichos(),
          Numeros(),
          Vogais(),
        ]));
  }
}
