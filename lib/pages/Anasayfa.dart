import 'package:flutter/material.dart';
import 'package:midas_clone/components/anasayfa_listTile.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  final String _toplamVarlikName = "Toplam Varlık";
  final double _toplamVarlik = 1.02281;
  final String _gunlukDegisim = "-12,69 (1,23%) Bugün";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ElevatedButton(onPressed: (){

        // ignore: sort_child_properties_last
        }, child: const Text("\$5 Hisse Kazan"),
          style:  ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.lightBlue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),

            ),
          ),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.alarm,color: Colors.black,)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                child: Container(
                  width: 400,//telefon genişligini al
                  height: 170,
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(_toplamVarlikName,style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.white)),
                      Text(_toplamVarlik.toString(),style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                      Text(_gunlukDegisim ,style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.orangeAccent)),
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.grey,width: 0.5
                        )

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Padding(
                                padding: EdgeInsets.all(7),
                                child: Text("TL Bakiye",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7),
                                child: Text("\₺1265,46",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.indigo),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (){

                              }, icon: const Icon(Icons.add,color: Colors.indigo,))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          width: 0.5,
                          color: Colors.grey
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:   [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Text("USD Bakiye",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Text("\$45,75",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.indigo),
                              ),
                              )
                            ],
                          ),
                          Row(
                            children:  [
                              IconButton(onPressed: (){

                              }, icon: const Icon(Icons.add,color: Colors.indigo))
                            ],
                          ),
                        ],
                      ),

                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[100],
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Yatırımlarım",style: Theme.of(context).textTheme.titleLarge,),
                            TextButton(onPressed: (){

                            }, child: Text("Toplam Değer (T)",style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.indigo),))
                          ],
                        ),
                         Container(
                           decoration: const BoxDecoration(
                               color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(15))
                           ),
                           child: Column(
                             children: [
                               ListTile(
                                   title: const Text("Borsa İstanbul"),
                                   trailing: Card(
                                       color: Colors.transparent,
                                       elevation: 0.0,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("₺1256.55",style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16.0 ),),
                                           const Text("₺12,85(9,55%)"),
                                         ],
                                       )
                                   )
                               ),
                               const AnasayfaListTile(hisseName: "GWIND", fiyat: "₺24,28",toplamMiktar: "₺215.55",yuzdelikDegisim: "%10(1.75)", icon: Icons.circle_sharp,),
                               const AnasayfaListTile(hisseName: "EREGL", fiyat: "₺36,28",toplamMiktar: "₺300.55",yuzdelikDegisim: "%8.0(20.75)",icon: Icons.circle_sharp),
                               const AnasayfaListTile(hisseName: "HEKTS", fiyat: "₺42,28",toplamMiktar: "₺350.55",yuzdelikDegisim: "%1.2(9.75)",icon: Icons.circle_sharp),
                               const AnasayfaListTile(hisseName: "SASA", fiyat: "₺120,28",toplamMiktar: "₺420.55",yuzdelikDegisim: "%5.0(30.5)",icon: Icons.circle_sharp),
                               const AnasayfaListTile(hisseName: "SISE", fiyat: "₺34,48", toplamMiktar: "₺80.55",yuzdelikDegisim: "%3.5(5.15)",icon: Icons.circle_sharp),
                             ],
                           ),
                         ),

                      ],
                    )
                  ),

              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Listelerim",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400,color: Colors.black)),
                        TextButton(onPressed: (){

                        }, child: Text("Takip Listesi Ekle",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.normal,color: Colors.blue))),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
