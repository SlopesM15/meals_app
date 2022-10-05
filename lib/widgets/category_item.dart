import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String? title;
  final Color? color;
  final String? id;

  const CategoryItem(this.id, this.title, this.color);

  // void SelectCategory(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
  //     return CategoryMealScreen(id!, title!);
  //   }));

  void SelectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/categories-meals',
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color!.withOpacity(0.7), color!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
        // child: Text(title!, style: Theme.of(context).textTheme.subtitle1),
        child: Text(title!),
      ),
    );
  }
}
