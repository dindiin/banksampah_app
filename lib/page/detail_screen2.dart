import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bank_sampah/widget/list_nonorganic.dart';

class DetailScreen2 extends StatelessWidget {
  final int index;

  DetailScreen2({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  child: Hero(
                    tag: 'gbr2',
                    child: Image.asset('images/recycle.jpg'),
                  ),
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),

            //Header
            Container(
              margin: EdgeInsets.only(
                top: 16.0,
                bottom: 8.0,
              ),
              child: Text(
                'Sampah Non Organik',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange,
                ),
              ),
            ),

            ListCard(),
          ],
        ),
      ),
    );
  }
}
