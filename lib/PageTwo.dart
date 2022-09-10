
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Manage Store'),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
      //  child: Container(
          
         // child: Column(

            child:   GridView(
                  
                children: [

                 functionbox('''Marketing 
Desiegns''', Icons.volume_up,Colors.orange),

                 functionbox('''Online 
Payments''', Icons.currency_rupee,Colors.green),

                  functionbox('''Discount 
Coupons''', Icons.percent_outlined,Colors.yellow),
   
                functionbox('''My 
Customers''', Icons.people_outline_rounded,Colors.lightBlue),

                functionbox('''Store QR 
Code''', Icons.qr_code_2_outlined,Colors.grey),

                functionbox('''Extra 
Charge''', Icons.percent_outlined,Colors.purple),

                 functionbox2('''Order 
Form''', Icons.article,Colors.pink),

                ],
             
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                 childAspectRatio: 1.4,
                 // crossAxisCount: 2,


                    )
                )
        //    ],
         // ),
      //  ),
      ),
    );
  }

 functionbox(String txt, IconData icon1,Color clre){
return Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(10), color: Colors.white70),
child: Align(
  alignment: Alignment.topLeft,
  child:   Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
    
      children: [
    
        Align(
          alignment: Alignment.topLeft,

          child: Padding(
            padding: const EdgeInsets.only(top:10,left: 10),
            child: Icon(icon1 ,color:clre,),
          )),
    
        Align(
            alignment: Alignment.topLeft,

          child: Padding(
            padding: const EdgeInsets.only(top:10.0,left: 10),
            child: Text(txt,style: TextStyle(fontSize: 20),),
          )),
    
      ],
    
    ),
  ),
)
);
}

 functionbox2(String txt, IconData icon1,Color clre){
return Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.white70),
child: Align(
  alignment: Alignment.topLeft,
  child:  Column(
  
    children: [
  
      Align(
        alignment: Alignment.topLeft,

        child: Padding(
          padding: const EdgeInsets.only(top:10.0,left: 10.0),
          child: Icon(icon1 ,color:clre,),
        )),
  
      Align
      (
        alignment: Alignment.topLeft,

        child: Padding(
          padding: const EdgeInsets.only(top:10.0,left: 10.0),
          child: Text(txt,style: TextStyle(fontSize: 20),),
        )),
  
               Align(
                 alignment: Alignment.topRight,
                 child: 
               //  Padding(
                 //  padding: EdgeInsets.only(top:10.0,),
                    Text(
                   
                       'NEW',
                   
                        style: TextStyle(backgroundColor: Colors.green),
                   
                      ),
               
                 ),
    ],
  
  ),
)
);
}


}