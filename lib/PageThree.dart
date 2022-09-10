import 'dart:ui';

import 'package:dukaan/PageTwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (() {
              Navigator.of(context).pop();
            }),
          ),
          title: const Text('Payments'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => PageTwo())));
                },
                icon: const Icon(Icons.info_outline_rounded))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(children: [
            Container(
              width: 60,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Title(
                          color: Colors.black,
                          child: Text('Transaction Limit',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '''A free limit up to which you will receive
the online payments directly in your bank''',
                        style:
                            TextStyle(color: Color.fromARGB(255, 96, 96, 96)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LinearProgressIndicator(
                      value: 0.3,
                      backgroundColor: Colors.grey[300],
                      // valueColor: Colors.blue,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('36,668 left out of ₹50,000',
                            style: TextStyle(
                                color: Color.fromARGB(255, 150, 149, 149)))),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Increase Limit'))),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Default Method'),
                    Row(
                      children: const [
                        Text(
                          'Online Payments  ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Profile'),
                    Row(
                      children: const [
                        Text(
                          'Bank Account  ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),

                Divider(
                  thickness: 2,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payments Overview',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Life Time ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),

                //////////////////////////////////////////////////

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orange,
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            //  crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'AMOUNT ON HOLD ',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('   ₹0',
                                      style: TextStyle(color: Colors.white))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                          ),
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            //  crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'AMOUNT RECIEVED ',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('  ₹13,332',
                                      style: TextStyle(color: Colors.white))),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Transactions',
                        style: TextStyle(fontWeight: FontWeight.bold))),

                const SizedBox(
                  height: 10,
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: StadiumBorder(),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'On hold',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                        onPressed: () {},
                        child: const Text('Payouts(15)'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: const StadiumBorder()),
                        onPressed: () {},
                        child: const Text(
                          'Refunds',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ]),

                const SizedBox(
                  height: 10,
                ),

                ///////////////////////////////////////////////////////////////List Section

                functionlist('Order #1688068', '₹799', 'Jul 12, 02:06PM',
                    'https://www.wyo.in/pub/media/mf_webp/jpg/media/catalog/product/cache/718154c3aff62b1ad64160986aa81112/t/r/trouble-maker-kids-t-shirt-navy_c32f0bb1-0c88-4657-9bbd-f96583ceb7a1_7.webp'),

                    Divider(thickness: 1,),
                functionlist('Order #1457741 ', '₹397.4', 'Apr 26, 07:47 AM', 'https://cms.cloudinary.vpsvc.com/images/c_scale,dpr_auto,f_auto,q_auto:good,w_700/legacy_dam/en-us/S001367575/CONS-853-photo-gift-lane1-NP-002?cb=97ad94e0d572fd1955c607985df7d744542b36f8'),    
                   
                Divider(thickness: 1,),

                functionlist('Order #1408896','₹686.42', 'Apr 11, 10:54AM', 'https://m.media-amazon.com/images/I/816EusI-qeL._SY450_.jpg'),

                Divider(thickness: 1,),

                functionlist('Order #1369633', '₹1123.5', 'Apr 2, 11:29AM', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmbLmlyfwA72G96rw74OtN09H7KIrxRPdpkowMSGivysOW9ZO5ImTQhOOIyHRP_5g2uy4&usqp=CAU'),

                Divider(thickness: 1,),

                                functionlist('Order #1688068', '₹799', 'Jul 12, 02:06PM',
                    'https://www.wyo.in/pub/media/mf_webp/jpg/media/catalog/product/cache/718154c3aff62b1ad64160986aa81112/t/r/trouble-maker-kids-t-shirt-navy_c32f0bb1-0c88-4657-9bbd-f96583ceb7a1_7.webp'),

                    Divider(thickness: 1,),
                functionlist('Order #1457741 ', '₹397.4', 'Apr 26, 07:47 AM', 'https://cms.cloudinary.vpsvc.com/images/c_scale,dpr_auto,f_auto,q_auto:good,w_700/legacy_dam/en-us/S001367575/CONS-853-photo-gift-lane1-NP-002?cb=97ad94e0d572fd1955c607985df7d744542b36f8'),    
                   
                Divider(thickness: 1,),

                functionlist('Order #1408896','₹686.42', 'Apr 11, 10:54AM', 'https://m.media-amazon.com/images/I/816EusI-qeL._SY450_.jpg'),

                Divider(thickness: 1,),

                functionlist('Order #1369633', '₹1123.5', 'Apr 2, 11:29AM', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmbLmlyfwA72G96rw74OtN09H7KIrxRPdpkowMSGivysOW9ZO5ImTQhOOIyHRP_5g2uy4&usqp=CAU'),

                Divider(thickness: 1,),


                


              ],
            ),
          ]),
        ));
  }

  //////////////////////////////////////

  functionlist(String title1, String money1, String time, String img) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 60,
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.network(img,),
              ),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title1,
                      
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$money1',style: TextStyle(color: Colors.blue),),
                    
                  ],
                ),

                    const SizedBox(
                      height: 8,
                    ),



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$time'),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.green,
                        ),
                        Text('Sucessful '),
                      ],
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),

                    const SizedBox(
                      height: 8,
                    ),


        Text(
          '₹$money1 deposited to 58860200000138',
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
