import 'package:flutter/material.dart';
import 'test_data_provider.dart';

class TestDetailScreen extends StatefulWidget {
  const TestDetailScreen({Key? key, required this.test}) : super(key: key);

  final TestModel test;

  @override
  TestDetailScreenState createState() => TestDetailScreenState();
}

class TestDetailScreenState extends State<TestDetailScreen> {
  Map<String, dynamic>? selectedOptions;

  @override
  void initState() {
    super.initState();
    selectedOptions = {};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.test.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.test.description,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.test.questions.length,
              itemBuilder: (context, index) {
                final question = widget.test.questions[index];
                final groupValue = selectedOptions![index.toString()];

                return ListTile(
                  title: Text(question.question),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var i = 0; i < question.options.length; i++)
                        RadioListTile<Map<String, dynamic>>(
                          title: Text(question.options[i].option),
                          value: question.options[i].scores,
                          groupValue: groupValue,
                          onChanged: (value) {
                            setState(() {
                              selectedOptions![index.toString()] = value;
                            });
                          },
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (selectedOptions != null) {
                showResults();
              }
            },
            child: const Text('Testi Bitir'),
          ),
        ],
      ),
    );
  }

void showResults() {
  Map<String, dynamic>? selectedOptionsMap = selectedOptions as Map<String, dynamic>;

  Map<String, int> scoreSum = {};

  for (var entry in selectedOptionsMap.entries) {
    dynamic optionValue = entry.value;

    if (optionValue is Map<String, int>) {
      for (var scoreEntry in optionValue.entries) {
        String scoreType = scoreEntry.key;
        int score = scoreEntry.value;

        scoreSum[scoreType] = (scoreSum[scoreType] ?? 0) + score;
      }
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Results', style: TextStyle(fontWeight: FontWeight.bold)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var entry in scoreSum.entries)
              Text('${entry.key}: ${entry.value}',
                  style: const TextStyle(fontSize: 16, color: Colors.blue)),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text('Close', style: TextStyle(color: Colors.white)),
          ),
        ],
      );
    },
  );
}

}
