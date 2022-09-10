
import 'package:flutter/material.dart';

class PageSix extends StatefulWidget {
  const PageSix({Key? key}) : super(key: key);

  @override
  State<PageSix> createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
  bool isSwitched = true;

  // bool isSwitched2 = true;
  // bool isSwitched3 = true;
  // bool isSwitched4 = true;
  // bool isSwitched5 = true;

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            title: Text('Catlogue'),
            centerTitle: true,
            actions: const [
              Icon(Icons.search),
            ],
            bottom: const TabBar(tabs: [
              Tab(text: 'Products'),
              Tab(
                text: 'Categories',
              )
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: ListView(
                children: [
                  functionbox(
                      'https://www.wyo.in/pub/media/mf_webp/jpg/media/catalog/product/cache/718154c3aff62b1ad64160986aa81112/t/r/trouble-maker-kids-t-shirt-navy_c32f0bb1-0c88-4657-9bbd-f96583ceb7a1_7.webp',
                      'Couch Potato | Women...',
                      '₹799'),


                  functionbox(
                      'https://www.wyo.in/pub/media/mf_webp/jpg/media/catalog/product/cache/718154c3aff62b1ad64160986aa81112/t/r/trouble-maker-kids-t-shirt-navy_c32f0bb1-0c88-4657-9bbd-f96583ceb7a1_7.webp',
                      'Couch Potato | Women...',
                      '₹799'),

                  functionbox(
'https://www.swagshirts99.com/wp-content/uploads/2021/02/Above-And-Beyond-Small-Moments-White-T-Shirt.jpg', 'Couch Potato | Women...', '₹799'),

                  functionbox(
'https://www.swagshirts99.com/wp-content/uploads/2021/02/Above-And-Beyond-Small-Moments-White-T-Shirt.jpg', 'Mug Orchard ',
                      '₹499'),

                  functionbox(
                      'https://www.wyo.in/pub/media/mf_webp/jpg/media/catalog/product/cache/718154c3aff62b1ad64160986aa81112/t/r/trouble-maker-kids-t-shirt-navy_c32f0bb1-0c88-4657-9bbd-f96583ceb7a1_7.webp',
                      'Couch Potato | Women...',
                      '₹799'),
    
    
    


                ],
              ),
            ),
            Center(
              child: Text('Tab2'),
            ),
          ]),
        ),
      );
    


  Widget functionbox(String img, String title, String price) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(color: Colors.white),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
              //F  height: 150,
                width: 70,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.network(
                    img,
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title),
                      Icon(Icons.more_vert_outlined),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1 piece'),
                      Text( price),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'In Stock',
                        style: TextStyle(color: Colors.green),
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ))
            ],
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.share),
                Text('Share Product'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
