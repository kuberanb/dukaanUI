
import 'dart:ui';

import 'package:dukaan/widgets/youtoube_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('Dukaan Premium'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 140,
                      color: Colors.blue,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      height: 60,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                left: 20,
                right: 20,
                child: Container(
                  
                  decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 213, 212, 212)),  color: Colors.white,),
                
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('Assets/images/dukaanlogo.png',   

                              height: 100,
                              width: 200

                              ),

                        ],
                      ),

                      //  Text(
                      //   'PREMIUM',
                      //   style: TextStyle(color: Colors.blue),
                      // ),

                      Text('Get Dukaan Premium for just ',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text('₹4,999/year',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),

                      Text(
                        'All the advanced feautures for scaling your',
                        style: TextStyle(color: Color.fromARGB(255, 131, 130, 130)),
                      ),
                      SizedBox(height: 5,),

                      Text(
                        'buisiness',
                        style: TextStyle(color: Color.fromARGB(255, 131, 130, 130),
                      ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Text('Feautures',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 15,),

          functionlist('Custom domain name', '''Get your own custom domain and build
your brand on the internet''', Icons.maps_home_work_outlined),
          SizedBox(height: 15,),

          functionlist('Verified seller badge ', '''Get green verified badge under your
store name and build trust.''', Icons.verified_outlined),

          SizedBox(height: 15,),

          functionlist('Dukaan for PC ', '''Access all the exclusive premium
features on Dukaan for PC''', Icons.computer_outlined),

          SizedBox(height: 15,),

                    functionlist('Priority support ', '''Get your questions resolved with our 
priority customer support''', Icons.support_agent_outlined),

          SizedBox(height: 15,),

          Divider(thickness: 3,color: Color.fromARGB(255, 215, 215, 215),),

          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Text('What is Dukaan Premium?',style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container
            (

            decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 213, 212, 212)),  color: Colors.white,),

             // child: const YoutoubePlayer()
            ),
          ),

          SizedBox(height: 100,),


          



        ],
      ),
    );
  }

  functionlist(String title1, String subtitle1, IconData icon1) {
    return ListTile(
      title: Text(title1),
      subtitle: Text(subtitle1),
      leading: Icon(icon1,color: Colors.blue,),
    );
  }
}
