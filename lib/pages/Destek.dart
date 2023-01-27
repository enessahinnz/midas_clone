import 'package:flutter/material.dart';
import 'package:midas_clone/components/destek_listTile.dart';

class Destek extends StatefulWidget {
  const Destek({Key? key}) : super(key: key);

  @override
  State<Destek> createState() => _DestekState();
}

class _DestekState extends State<Destek> {

  final String _text = "Aradığın cevabı aşağıdaki başlıklarda bulamazsan ya da öneride bulunmak istersen bizimle iletişime geçebilirsin";
  final String _taleplerim = "Taleplerim";
  final String _destekButton = "Bizimle İletişime Geç";
  final String _destekText = "Destek";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(_taleplerim,style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500,color: Colors.black),),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://img.freepik.com/free-photo/design-space-paper-textured-background_53876-42312.jpg?w=740&t=st=1670268301~exp=1670268901~hmac=03c64d00283a55608191dee7302e5519fc21bbbd58269c4542788f97752934fa"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Icon(Icons.support_agent_outlined,size: 60,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35,right: 35),
                      child: Text(_text,maxLines: 3,style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: SizedBox(
                           width: 300,
                            height: 40,
                            child: ElevatedButton(onPressed: (){

                            }, child: Text(_destekButton,style: const TextStyle(fontSize: 15),),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.deepPurpleAccent
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Text(_destekText,style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500,color: Colors.black),),
            const TextField(
              decoration: InputDecoration(
                hintText: "Ara",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                prefixIcon: Icon(Icons.search_outlined)
              ),

            ),
            const DestekListTile(title: "Üyelik", subtitle: "Üyelik Hakkında Merak Ettiklerin", icon: Icons.chevron_right_outlined),
            const DestekListTile(title: "Midas Hakkında", subtitle: "Midas Hakkında Merak Ettiklerin", icon: Icons.chevron_right_outlined),
            const DestekListTile(title: "Para Transferi", subtitle: "Para Transferiyle ilgili Merak Ettiklerin", icon: Icons.chevron_right_outlined),
            const DestekListTile(title: "Yatırım", subtitle: "Yatırım Ürünleriyle ilgili Merak Ettiklerin", icon: Icons.chevron_right_outlined)
          ],
        ),
      ),
  ),
    );
  }
}
