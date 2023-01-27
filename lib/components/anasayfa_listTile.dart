import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnasayfaListTile extends StatelessWidget {
  const AnasayfaListTile({
    Key? key,
    required this.hisseName,
    required this.fiyat,
    required this.toplamMiktar,
    required this.yuzdelikDegisim,
    required this.icon}) : super(key: key);

  final String hisseName;
  final String fiyat;
  final String toplamMiktar;
  final String yuzdelikDegisim;
  final icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(hisseName),
      subtitle: Text(fiyat),
      trailing: Card(
          color: Colors.transparent,
          elevation: 0.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //"₺1256.55"
              Text(toplamMiktar,style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16.0 ),),
              //"₺12,85(9,55%)"
              Text(yuzdelikDegisim),
            ],
          )
      ),
    );
  }
}
