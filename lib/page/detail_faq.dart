import 'package:flutter/material.dart';
import 'package:bank_sampah/model/faq.dart';

class DetailFaq extends StatelessWidget {
  final Question question;

  DetailFaq({this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('FAQ'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(questions[index].tanya),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  questions[index].jawab,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) => Divider(),
        itemCount: questions.length,
      ),
    );
  }
}
