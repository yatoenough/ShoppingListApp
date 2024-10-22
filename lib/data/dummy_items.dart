import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/models/item.dart';
import 'package:shopping_list/data/dummy_categories.dart';

final items = [
  Item(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[Categories.dairy]!),
  Item(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category: categories[Categories.fruit]!),
  Item(
      id: 'c',
      name: 'Beef Steak',
      quantity: 1,
      category: categories[Categories.meat]!),
];
