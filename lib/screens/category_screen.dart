import '../dummy_data.dart';

import 'package:flutter/material.dart';

import '../widgets/category_item.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          'Select What Do You Need',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Categories_list(),
    );
  }
}

class Categories_list extends StatelessWidget {
  //const Categories_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        children: STORED_CATIGORIES.map((cateData) {
          return Category_item(
            id: cateData.id,
            title: cateData.title,
            icon: cateData.icon,
          );
        }).toList());
  }
}
