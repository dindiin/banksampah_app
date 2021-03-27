import 'package:flutter/material.dart';
import 'package:bank_sampah/model/content.dart';

class ListCard extends StatelessWidget {
  final Content content;
  final int index;

  ListCard({this.content, this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: contentList.map((content) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    // Gambar
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            content.imageAsset,
                          ),
                        ),
                      ),
                    ),
                    // Text
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            content.subJudul,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            content.desc,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
