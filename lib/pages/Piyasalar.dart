import 'package:flutter/material.dart';
import 'package:midas_clone/pages/borsa/american_piyasasi.dart';
import 'package:midas_clone/pages/borsa/borsa_istanbul.dart';

class Piyasalar extends StatefulWidget {
  const Piyasalar({Key? key}) : super(key: key);

  @override
  State<Piyasalar> createState() => _PiyasalarState();
}

class _PiyasalarState extends State<Piyasalar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Piyasalar",style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500,color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: const TabBar(tabs: [
            Tab(child: Text("Amerikan Borsası")),
            Tab(child: Text("Borsa İstanbul")),
          ],
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          ),
          ),
          body: const TabBarView(children: [
            AmericanPiyasa(),
            BorsaIstanbul(),

          ],)
        ),
      ),
    );
  }
}
