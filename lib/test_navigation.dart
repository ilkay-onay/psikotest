import 'package:flutter/material.dart';
import 'tabs_screen.dart';
import 'test_list_screen.dart';

class TestNavigation {
  static void goHome() {
  }

  static void goToDonationPage() {
  }

  static void goToTabsScreen(BuildContext context, String category) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TabsScreen(category: category),
      ),
    );
  }

  static void goToTestList(BuildContext context, String category, String subcategory) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TestListScreen(category: category, subcategory: subcategory),
      ),
    );
  }
}