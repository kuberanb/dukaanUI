import 'dart:ui';

import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Text('Order #1688068'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,


            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('May 31, 05:42 PM'),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Delivered '),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1 ITEM'),
                  Row(
                    children: const [
                      Icon(
                        Icons.receipt,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'RECEIPT ',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 80,
                      width: 60,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.network(
                          'https://www.wyo.in/pub/media/mf_webp/jpg/media/catalog/product/cache/718154c3aff62b1ad64160986aa81112/t/r/trouble-maker-kids-t-shirt-navy_c32f0bb1-0c88-4657-9bbd-f96583ceb7a1_7.webp',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Explore | Men | Navy Blue'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1 piece'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Size: XL'),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        child: Text('1'),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text('x ₹799'),
                                    ],
                                  ),
                                  Text('₹799'),
                                ],
                              ),
                            ),
                          ],
                        ),



                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Total'),
                  Text('₹799'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery'),
                  Text(
                    'FREE',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '₹799',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('CUSTOMER DETAILS',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.share_outlined,
                        color: Colors.blue,
                      ),
                      Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deepa'),
                          const Text('+91-7829000484'),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.call,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.whatsapp,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                  
                ],
              ),

                      SizedBox(height: 20,),


                      Text('Address',style: TextStyle(fontWeight: FontWeight.bold),),

                      SizedBox(height: 5,),

                      Text('D1101 Chartered Beverly'),

                      Text('Hills,Subramanyapura PO'),

                      SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('City',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Pincode',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Banglore',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('560061',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),

              


              


            ],
          ),
        )
    );
  }
}
