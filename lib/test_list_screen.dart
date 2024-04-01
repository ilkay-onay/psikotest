import 'package:flutter/material.dart';
import 'test_detail_screen.dart';
import 'test_data_provider.dart';

class TestListScreen extends StatelessWidget {
  const TestListScreen({
    Key? key,
    required this.category,
    required this.subcategory,
  }) : super(key: key);

  final String category;
  final String subcategory;

@override
Widget build(BuildContext context) {
  return FutureBuilder<List<TestModel>>(
    future: TestDataProvider.getTests(category, subcategory),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        // Show a loading indicator while waiting for the data.
        return const CircularProgressIndicator();
      } else if (snapshot.hasError) {
        // Handle any errors that occurred during the Future computation.
        return Text('Error: ${snapshot.error}');
      } else {
        // Data has been received successfully.
        final List<TestModel> tests = snapshot.data!;

        return ListView.builder(
          itemCount: tests.length,
          itemBuilder: (context, index) {
            final test = tests[index];
            return ListTile(
              title: Text(test.title),
              subtitle: Text(test.description),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TestDetailScreen(test: test),
                  ),
                );
              },
            );
          },
        );
      }
    },
  );
}
}