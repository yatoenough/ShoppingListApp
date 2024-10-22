import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/widgets/shopping_list_item.dart';

class ShoppingListView extends StatelessWidget {
  const ShoppingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your shopping list"),
      ),
      body: Column(
        children: [for (final item in items) ShoppingListItem(item: item)],
      ),
    );
  }
}
