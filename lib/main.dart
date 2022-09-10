import 'package:dukaan/PageFour.dart';
import 'package:dukaan/PageOne.dart';
import 'package:dukaan/PageSix.dart';
import 'package:dukaan/PageThree.dart';
import 'package:dukaan/widgets/youtoube_player.dart';
import 'package:flutter/material.dart';
import 'PageTwo.dart';
import 'PageFive.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

//import 'PageSix.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: PageFour(),

    );
  }
}