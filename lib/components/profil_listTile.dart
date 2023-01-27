import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilListTile extends StatelessWidget {
  const ProfilListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.leadingicon}) : super(key: key);

  final String title;
  final String subtitle;
  final icon;
  final leadingicon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingicon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(icon),
    );
  }
}


