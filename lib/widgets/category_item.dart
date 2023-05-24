import 'package:flutter/material.dart';

import '../screens/translation_detail_screen.dart';



///test commit
//todo Color(0xffA8F600)
class Category_item extends StatelessWidget {
  //const Category_item({Key? key}) : super(key: key);
  final String id;
  final String title;
  final Icon icon;
  Category_item({
    required this.id,
    required this.title,
    required this.icon,
  });

  void toRecipeScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(TranslationDetailScreen.routName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => toRecipeScreen(context),
      //toRecipeScreen(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Card(
            color: const Color(0xffA8F600),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                Text(title.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ],
            ),
            ),
      ),
    );
  }
}
