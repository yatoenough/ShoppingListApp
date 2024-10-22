import 'package:flutter/material.dart';

class NewItemView extends StatefulWidget {
  const NewItemView({super.key});

  @override
  State<NewItemView> createState() => _NewItemViewState();
}

class _NewItemViewState extends State<NewItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new item"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Text("Form"),
      ),
    );
  }
}
