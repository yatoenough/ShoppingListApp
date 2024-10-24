import 'package:flutter/material.dart';
import 'package:shopping_list/models/item.dart';
import 'package:shopping_list/view/new_item_view.dart';
import 'package:shopping_list/widgets/shopping_list_item.dart';

class ShoppingListView extends StatefulWidget {
  const ShoppingListView({super.key});

  @override
  State<ShoppingListView> createState() => _ShoppingListViewState();
}

class _ShoppingListViewState extends State<ShoppingListView> {
  final List<Item> _items = [];

  void _addItem() async {
    final newItem = await Navigator.push<Item>(
      context,
      MaterialPageRoute(
        builder: (context) => const NewItemView(),
      ),
    );

    if (newItem == null) {
      return;
    }
    setState(() {
      _items.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your shopping list"),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: _items.isNotEmpty
          ? ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) => Dismissible(
                key: ValueKey(_items[index]),
                direction: DismissDirection.endToStart,
                background: Container(
                  padding: const EdgeInsets.only(right: 10),
                  color: Colors.red,
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Icon(Icons.delete),
                        Text("Delete"),
                      ],
                    ),
                  ),
                ),
                onDismissed: (direction) {
                  setState(() {
                    _items.remove(_items[index]);
                  });
                },
                child: ShoppingListItem(
                  item: _items[index],
                ),
              ),
            )
          : Center(
              child: Text(
                "There is no items yet!",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
    );
  }
}
