import 'package:flutter/material.dart';
import 'package:midas_clone/components/dikey_listview.dart';
import 'package:midas_clone/components/haberler.dart';
import 'package:midas_clone/components/piyasalar_components.dart';
import 'package:midas_clone/components/yatay_listview.dart';

class AmericanPiyasa extends StatefulWidget {
   const AmericanPiyasa({super.key});

  @override
  State<AmericanPiyasa> createState() => _AmericanPiyasaState();
}

class _AmericanPiyasaState extends State<AmericanPiyasa> {

  String url = "https://cdn-icons-png.flaticon.com/512/2965/2965879.png";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBarTitle(title: "Günün Öne Çıkanları",),
          const YatayListview(),
          const SizedBox(
            height: 20,
          ),
          DikeyListview(rank: 1,symbol: "NVGV",name:"Energy Voult Holdings",change: "+35,58%",),
          DikeyListview(rank: 2,symbol: "ALBT",name:"Avalon GloboCare",change: "+18,81%",),
          DikeyListview(rank: 3,symbol: "EOLS",name:"Evolus",change: "+15,07%",),
          DikeyListview(rank: 4,symbol: "CTM",name:"Castellum, Inc.",change: "+13,76%",),
          DikeyListview(rank: 5,symbol: "PRTC",name:"PureTech Health Plc",change: "+12,97%",),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15,vertical: 20),
            child: Text("HABERLER",style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w400,color: Colors.black),),
          ),
          Haberler(title: "Eregli Temmettü (2023) EREGL Temettü Tahmimi Ve Ödeme", subtTitle: "EREGL", url:url),
          Haberler(title: "Anadolu  Isuzu'dan Avrupa'da Stratejik Hamle!", subtTitle: "ASUZU", url:url),
          Haberler(title: "Yataş Sünger Yatırımıyla Kapasite Arttıracak", subtTitle: "YATAS", url:url),
          Haberler(title: "Astor Enerji Gözünü Avrupa Pazarına Dikti", subtTitle: "ASTOR", url:url),
          Haberler(title: "Arçelik Temettü (2023) ARCLK Temettü Tahmimi Ve Ödeme", subtTitle: "ARCLK", url:url),
          Haberler(title: "Smart Güneş Teknolojileri'den 1,3 Milyon Dolarlık Satış Sözleşmesi", subtTitle: "SMRTG", url:url),
        ],
      ),
    );
  }
}