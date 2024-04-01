import 'package:flutter/material.dart';
import 'about_page.dart';
import 'help_page.dart';
import 'donate_page.dart';
import 'settings_page.dart';
import 'test_navigation.dart';

class TestCategories extends StatelessWidget {
  const TestCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListTile(
          title: Text('Ana Sayfa'),
          onTap: TestNavigation.goHome,
        ),
        const TestCategoryItem(category: 'Çocuk'),
        const TestCategoryItem(category: 'Yetişkin'),
        const Divider(),
        ListTile(
          title: const Text('Hakkımızda'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AboutPage(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Yardım'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HelpPage(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Ayarlar'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Bağış'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DonatePage(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class TestCategoryItem extends StatelessWidget {
  const TestCategoryItem({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(category),
      children: [
        TestCategorySubItem(subcategory: 'Zeka', category: category),
        TestCategorySubItem(subcategory: 'Kişilik', category: category),
      ],
    );
  }
}

class TestCategorySubItem extends StatelessWidget {
  const TestCategorySubItem({
    Key? key,
    required this.subcategory,
    required this.category,
  }) : super(key: key);

  final String subcategory;
  final String category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(subcategory),
      onTap: () {
        if (category == 'Yetişkin' || category == 'Çocuk') {
          TestNavigation.goToTabsScreen(context, category);
        } else {
          TestNavigation.goToTestList(context, category, subcategory);
        }
      },
    );
  }
}