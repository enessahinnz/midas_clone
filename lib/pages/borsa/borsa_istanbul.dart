import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:midas_clone/components/dikey_listview.dart';
import 'package:midas_clone/components/haberler.dart';
import 'package:midas_clone/components/piyasalar_components.dart';
import 'package:midas_clone/components/yatay_listview.dart';

class BorsaIstanbul extends StatefulWidget {
  const BorsaIstanbul({super.key});

  @override
  State<BorsaIstanbul> createState() => _BorsaIstanbulState();
}

class _BorsaIstanbulState extends State<BorsaIstanbul> {


  String url = "https://cdn-icons-png.flaticon.com/512/2965/2965879.png";
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBarTitle(title: "Günün Öne Çıkanları",),
          const YatayListview(),
          DikeyListview(rank: 1,symbol: "ONCSM",name: "ONCOSEM ONKOLOJİK SiSTEM...",change: "+10%",),
          DikeyListview(rank: 2,symbol: "MACKO",name: "MACKOLİK İNTERNET Hizmet...",change: "+10%",),
          DikeyListview(rank: 3,symbol: "SDTTR",name: "SDT UZAY VE SAVUNMA",change: "+9,99%",),
          DikeyListview(rank: 4,symbol: "ASTOR",name: "ASTOR Enerji",change: "+9,98%",),
          DikeyListview(rank: 5,symbol: "ARDYZ",name: "ARD Grup Bilişim Tek.",change: "+9,96%",),
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

















