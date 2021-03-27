import 'package:bank_sampah/page/detail_faq.dart';
import 'package:bank_sampah/page/detail_screen.dart';
import 'package:bank_sampah/page/detail_screen2.dart';
import 'package:bank_sampah/widget/qrscan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'images/1.jpg',
      'images/2.jpg',
      'images/3.jpg',
      'images/4.jpg',
      'images/5.jpg',
      'images/6.jpg',
      'images/7.jpg',
      'images/8.jpg',
      'images/9.jpg',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Header
            Stack(
              children: <Widget>[
                SafeArea(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('images/eco.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Bank Sampah',
                              style: TextStyle(
                                fontSize: 36.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.lightGreen,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ), //Header

            SizedBox(
              height: 10.0,
            ),

            // Image Scroll
            Container(
              margin: EdgeInsets.all(8.0),
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(imageList[index]),
                    ),
                  );
                },
                itemCount: imageList.length,
              ),
            ), // Image scroll

            SizedBox(
              height: 10.0,
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 8.0, 0, 8.0),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    // Card Organic
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen();
                            }));
                          },
                          child: Card(
                            color: Colors.green[100],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            elevation: 10,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Hero(
                                      tag: 'gbr1',
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: Image.asset(
                                            'images/konservasi.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Sampah Organik',
                                          //textScaleFactor: 1.1,
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(5.0)),
                                        Text(
                                          'Baca selengkapnya..',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ), // Card Organic

                    // Card Non Organic
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen2();
                            }));
                          },
                          child: Card(
                            color: Colors.deepOrange[100],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            elevation: 10,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Hero(
                                      tag: 'gbr2',
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child:
                                            Image.asset('images/recycle.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Sampah Non Organik',
                                          //textScaleFactor: 1.1,
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(5.0)),
                                        Text(
                                          'Baca selengkapnya..',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ), // Card Non Organic
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                color: Colors.lightGreen,
                child: Text(
                  "FAQ",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailFaq();
                  }));
                },
              ),
            ),

            SizedBox(
              height: 5.0,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                color: Colors.lightGreen,
                child: Text(
                  "Scan QR Code",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyScan();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
