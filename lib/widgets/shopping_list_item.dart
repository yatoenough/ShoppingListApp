import 'package:flutter/material.dart';
import 'package:shopping_list/models/item.dart';

class ShoppingListItem extends StatelessWidget {
  const ShoppingListItem({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: item.category.color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: item.category.color,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(item.name),
            const Spacer(),
            Text("${item.quantity}"),
          ],
        ),
      ),
    );
  }
}
