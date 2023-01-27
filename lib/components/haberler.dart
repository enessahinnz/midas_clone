import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Haberler extends StatelessWidget {
  final title;
  final subtTitle;
  final url;
  const Haberler({Key? key,required this.title,required this.subtTitle,required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          subtitle: Text(subtTitle),
          trailing: Image.network(url),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(height: 50,),
        )
      ],
    );
  }
}
