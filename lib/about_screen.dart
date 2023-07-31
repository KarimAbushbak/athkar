
import 'package:flutter/material.dart';

import 'core/resources/manager_font_sizes.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String? description;
  String? name;
  String? url;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      body: Container(
        color: Colors.white70,
        child: Center(
          child: Text(description ?? '', style: TextStyle(
            fontSize: ManagerFontSizes.s24,

          ),),
        ),
      ),
    );
  }
}
