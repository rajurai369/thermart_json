import 'package:flutter/material.dart';

class FeatureProduct extends StatelessWidget {
  final String title;
  final String subtitle;
  const FeatureProduct({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
      subtitle: Text(subtitle),
    );
  }
}
