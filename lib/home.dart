import 'package:flutter/material.dart';
import 'package:vitatest/screenContent.dart';

import 'background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            const BackGround(),
            Content(),
          ],
        ),
      ),
    );
  }
}
