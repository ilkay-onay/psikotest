import 'package:flutter/material.dart';
import 'test_list_screen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(category),
          automaticallyImplyLeading: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Zeka'),
              Tab(text: 'Kişilik'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TestListScreen(category: category, subcategory: 'Zeka'),
            TestListScreen(category: category, subcategory: 'Kişilik'),
          ],
        ),
      ),
    );
  }
}