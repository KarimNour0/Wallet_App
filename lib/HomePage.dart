import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatelessWidget {
  // const Homepage({Key? key}) : super(key: key);

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Text('My' , style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold , color: Colors.black),),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Cards' , style: TextStyle(fontSize: 28  , color: Colors.grey),),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(Icons.add),
                          ))
                    ],
                  ),
                ),
                // Cards()
                Container(
                  height: 200,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller : controller,
                    children: [
                      Cards(Balance: 5250.20 ,
                          CardNum: 12345678,
                          expiryManth: 10,
                          expiryYear: 24,
                      color: Colors.deepPurple[400]),
                      Cards(Balance: 200000,
                          CardNum: 8765,
                          expiryManth: 7,
                          expiryYear: 20,
                          color: Colors.green),
                      Cards(Balance: 750000,
                          CardNum: 3165,
                          expiryManth: 7,
                          expiryYear: 20,
                          color: Colors.blue),
                    ],
                  ),
                ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                        controller: controller,  // PageController
                        count:  3,
                        // forcing the indicator to use a specific direction
                        textDirection: TextDirection.ltr,
                        effect:  WormEffect(
                            dotColor:  Colors.grey,
                            activeDotColor:  Colors.deepPurple
                        ),
                ),
                  ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        IconImage(Icon: 'assets/images/1.png' ,
                            text: 'Send'),
                        IconImage(Icon: 'assets/images/bill.png' ,
                            text: 'Bills'),
                        IconImage(Icon: 'assets/images/debit-card.png' ,
                            text: 'Pay'),
                        IconImage(Icon: 'assets/images/bill.png' ,
                            text: 'Bills'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ListTile(IconImage: 'assets/images/statistical-graphic.png',
                        Title: 'Statistics', Subtitle: 'Payment and income'),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(IconImage: 'assets/images/transaction (1).png',
                        Title: 'Transactions', Subtitle: 'Transactions History'),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(IconImage: 'assets/images/statistical-graphic.png',
                        Title: 'Statistics', Subtitle: 'Payment and income'),
                  ],
                )







    ],
            ),
          )),
    );
  }

//   Widget Cards({
//     final color ,
//     required double Balance,
//     required int CardNum,
//     required int expiryManth,
//     required int expiryYear,
// }) => Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 25),
//     child: Container(
//       decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(20)
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Balance' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
//             SizedBox(
//               height: 10,
//             ),
//             Text('\$ ' + Balance.toString() , style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold),),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Text(CardNum.toString(), style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
//                 Spacer(),
//                 Text(expiryManth.toString() +'/' + expiryYear.toString() , style: TextStyle(fontSize: 18 ),),
//
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );

  Widget Cards({
    required  color,
    required double Balance,
    required int CardNum,
    required int expiryManth,
    required int expiryYear,
  }) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Balance',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$ ' + Balance.toString(),
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  CardNum.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  expiryManth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );



  Widget IconImage({
    required String Icon,
    required String text,
  }) => Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Row(
      children: [
        Column(
          children: [
            Container(
              width: 110,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius : 10.0,
                        spreadRadius :1.0,
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(Icon),
                )),
            SizedBox(
              height: 12,
            ),
            Text(text , style: TextStyle(color: Colors.grey[700] , fontSize: 18 , fontWeight: FontWeight.bold ,),),
          ],
        ),
      ],
    ),
  );


  Widget ListTile(
      {
        required String IconImage,
        required String Title,
        required String Subtitle,
      }
      )=> Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Row(
      children: [
        Container(
            width: 100 ,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(IconImage )),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( Title, style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),),
            Text( Subtitle, style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.grey[600]),),
          ],
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios_rounded),
      ],
    ),
  );

}








