import 'package:flutter/material.dart';

class DestekListTile extends StatelessWidget {
  const DestekListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon}) : super(key: key);

  final String title;
  final String subtitle;
  final icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(icon),
    );
  }
}
