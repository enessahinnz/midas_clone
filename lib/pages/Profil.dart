import 'package:flutter/material.dart';

import '../components/profil_listTile.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {

  final String _ArkadasiniDavetEt = "ARKADAŞLARINI DAVET ET";
  final String _bonus = "Arkadaşlarını davet ederek Amerikan Borsalarında \$5 degerinde hisse kazanırsın";
  final String _profiltext = "Profil";
  final String _url = "https://img.freepik.com/free-photo/abstract-luxury-gradient-blue-background-smooth-dark-blue-with-black-vignette-studio-banner_1258-63452.jpg?w=996&t=st=1670268129~exp=1670268729~hmac=227299234004dbd04c2e0245795006f8f88289cbd8c08df7de94becfcd928cf1";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(_profiltext,style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500,color: Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: NetworkImage(_url),
                    fit: BoxFit.cover

                  ),

                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40),
                      child: Text(_bonus,maxLines: 3,style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: ElevatedButton(onPressed: (){

                          }, child: Text(_ArkadasiniDavetEt),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: Colors.deepPurpleAccent
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const ProfilListTile(title:"Arkadaş Daveti",subtitle:"Arkadaşlarını Davet Et, Hediye Kazan",icon:Icons.chevron_right_outlined,leadingicon:Icons.person_add_alt_outlined,),
            const ProfilListTile(title:"Hesap Özeti", subtitle: "Portföyünün Genel Durumu, Bakiye", icon: Icons.chevron_right_outlined, leadingicon: Icons.query_stats_rounded),
            const ProfilListTile(title: "Döviz Al/Sat", subtitle: "Amerikan Doları ve Türk Lirası Dönüştür", icon: Icons.chevron_right_outlined, leadingicon: Icons.change_circle_outlined),
            const ProfilListTile(title: "Para Transferi", subtitle: "Para Yatırma Para Çekme", icon: Icons.chevron_right_outlined, leadingicon: Icons.wallet_outlined),
            const ProfilListTile(title: "Virman", subtitle: "BIST Hisselerini Midas'a Taşı", icon: Icons.chevron_right_outlined, leadingicon: Icons.food_bank_outlined),
            const ProfilListTile(title: "İşlem Geçmişi", subtitle: "Hesabında Gerçekleşen Tüm İşlemler", icon: Icons.chevron_right_outlined, leadingicon: Icons.history),
            const ProfilListTile(title: "Tüm Alarmlar", subtitle: "Kurdugun Tüm Alarmlar", icon: Icons.chevron_right_outlined, leadingicon: Icons.alarm),
            const ProfilListTile(title: "Belgeler", subtitle: "İşlem Yaparken Kaydedilen Tüm Belgeler", icon: Icons.chevron_right_outlined, leadingicon: Icons.folder),
            const ProfilListTile(title: "Ayarlar", subtitle: "Hesap, Uygulama Ayarlari, İletişim Kanalları", icon: Icons.chevron_right_outlined, leadingicon: Icons.settings_outlined),
            const ProfilListTile(title: "Çıkış", subtitle: "", icon: Icons.chevron_right_outlined, leadingicon: Icons.exit_to_app),
          ],
        ),
      ),
    );
  }
}
