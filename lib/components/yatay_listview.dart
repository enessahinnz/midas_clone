import 'package:flutter/material.dart';

class YatayListview extends StatefulWidget {
  const YatayListview({super.key});

  @override
  State<YatayListview> createState() => _YatayListviewState();
}

class _YatayListviewState extends State<YatayListview> {
  var yatayListView = ["En Çok Yükselenler","En Çok Düşenler","En Çok İşlem Görenler","Midas'ın Popülerleri "];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,//Scroll yönü
                itemCount: yatayListView.length,//scroll uzunlugu
                itemBuilder: (context, index) {
                  return Card(
                      child: SizedBox(
                        width: yatayListView[index].characters.length.toDouble()*10,
                        child: Center(child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(yatayListView[index],style: const TextStyle(fontSize: 16),)
                          ],
                        )),
                      ),
                  );
                },
      ),
    );
  }
}