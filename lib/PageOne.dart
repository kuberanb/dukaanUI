import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  bool isSwitched = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
          title: Center(child: const Text('Additional Information')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Column(
                children: [
          
              functiontextfield('Share Dukaan App', Icons.share_outlined,
                  Icons.arrow_forward_ios_outlined),
              const SizedBox(
                height: 10,
              ),
              functiontextfield(
                  'Change Language',
                  Icons.chat_bubble_outline_outlined,
                  Icons.arrow_forward_ios_outlined),
              const SizedBox(
                height: 10,
              ),

              functiontextfield3(
                  'Whatsapp Chat Support', Icons.whatsapp_outlined),
              const SizedBox(
                height: 10,
              ),
              functiontextfield2('Privacy Policy', Icons.lock_outline_rounded),
              const SizedBox(
                height: 10,
              ),
              functiontextfield2('Rate Us', Icons.star_outline),
              const SizedBox(
                height: 10,
              ),
              functiontextfield2('Sign Out', Icons.exit_to_app_sharp),

                ],
              ),



                Column( 
                  children: const [
                    Text(
                      'Version',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text('2.4.2')
                  ],
                ),
            //   ),
         ],

        ),

      ),

    );
  }

  functiontextfield(String text, IconData icons, IconData icon2) {
    return ListTile(
      title: Text(text),
      leading: Icon(icons),
      trailing: Icon(icon2),
    );
  }

  functiontextfield2(String text, IconData icons) {
    return ListTile(
      title: Text(text),
      leading: Icon(icons),
    );
  }

functiontextfield3(String text, IconData icons) {
  return ListTile(
    title: Text(text),
    leading: Icon(icons),
            trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
            setState(() {
            isSwitched = value;
          }
          );
        },
      ),
    );
  }

  
}
