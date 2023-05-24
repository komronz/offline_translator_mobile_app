import 'package:flutter/material.dart';

class TranslationDetailItem extends StatelessWidget {
  final String id;
  final String engData;
  final String uzbData;
  TranslationDetailItem({
    required this.id,
    required this.engData,
    required this.uzbData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        color: const Color(0xffA8F600),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(engData, style: const TextStyle(fontSize: 18, color: Colors.black),),
              Text(uzbData, style: const TextStyle(fontSize: 14, color: Colors.grey),),
            ],
          ),
        ),
      )
    );
  }
}
