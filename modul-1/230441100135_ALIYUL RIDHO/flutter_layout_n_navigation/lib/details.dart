import 'package:flutter/material.dart';

class detailPage extends StatelessWidget {
  final String transferedTitle;
  final String transferedDescription;
  
  const detailPage({
    Key? key,
    required this.transferedTitle,
    required this.transferedDescription,
   
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        title: Text(
          transferedTitle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              height: 202,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage("assets/img/japanese_house.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140,
                  height: 48,
                 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/img/kategori.png'),
                          SizedBox(width: 10,),
                          Text('Town Trip', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Image.asset('assets/img/Location.png',),
                          SizedBox(width: 10,),
                          Text('Saitama, Japan', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),)
                        ],
                      )
                    ],
                  ),
                  
                ),
            Row(
              children: [
                Image.asset('assets/img/tiket.png'),
                SizedBox(width: 7,),
            Text('30.000,00', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),)
              ],
            )
              ],
            ),

            SizedBox(height: 10),
            Text(
              transferedDescription,
              style: TextStyle(fontSize: 14, 
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5),
              textAlign: TextAlign.justify,
              
            ),
            
          ],
        ),
      ),
    );
  }
}
