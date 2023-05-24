import 'package:flutter/material.dart';

import '../model/translation.dart';
import '../widgets/translation_data_item.dart';

class TranslationDetailScreen extends StatefulWidget {
  static final routName = '/translation-detail';
  final List<Translation> translationData;

  TranslationDetailScreen(this.translationData);

  @override
  State<TranslationDetailScreen> createState() =>
      _TranslationDetailScreenState();
}

class _TranslationDetailScreenState extends State<TranslationDetailScreen> {
  late String categoryTitle;

  late List<Translation> categoryData;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map;
    categoryTitle = routeArgs['title'];
    final id = routeArgs['id'];
    categoryData = widget.translationData
        .where((element) => element.categories.contains(id))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          categoryTitle.toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: categoryData.length,
        itemBuilder: (ctx, index) {
          return TranslationDetailItem(
            id: categoryData[index].id,
            engData: categoryData[index].engTitle,
            uzbData: categoryData[index].uzbTitle,
          );
        },
      ),
    );
  }
}
