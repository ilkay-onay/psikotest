import 'package:firebase_database/firebase_database.dart';


class TestModel {
  final String title;
  final String description;
  final List<QuestionModel> questions;

  TestModel({
    required this.title,
    required this.description,
    required this.questions,
  });
}

class QuestionModel {
  final String question;
  final List<TestOption> options;

  QuestionModel({
    required this.question,
    required this.options,
  });
}

class TestOption {
  final String option;
  final Map<String, int> scores;

  TestOption({
    required this.option,
    required this.scores,
  });
}


class TestDataProvider {
  static Future<List<TestModel>> getTests(String category, String subcategory) async {
    switch (subcategory) {
      case 'Zeka':
        return await _getZekaTests(category);
      case 'Kişilik':
        return await _getKisilikTests(category);
      default:
        return [];
    }
  }

  static Future<List<TestModel>> _getZekaTests(String category) async {
    final DatabaseReference databaseReference = FirebaseDatabase.instance.ref().child('tests').child(category).child('Zeka');
    final DatabaseEvent event = await databaseReference.once();
    final Map<dynamic, dynamic>? data = event.snapshot.value as Map<dynamic, dynamic>?;

    if (data != null) {
      return _parseTestModels(data);
    }

    return [];
  }

  static Future<List<TestModel>> _getKisilikTests(String category) async {
    final DatabaseReference databaseReference = FirebaseDatabase.instance.ref().child('tests').child(category).child('Kişilik');
    final DatabaseEvent event = await databaseReference.once();
    final Map<dynamic, dynamic>? data = event.snapshot.value as Map<dynamic, dynamic>?;

    if (data != null) {
      return _parseTestModels(data);
    }

    return [];
  }

  static List<TestModel> _parseTestModels(Map<dynamic, dynamic> data) {
    return data.entries.map((entry) {
      final Map<dynamic, dynamic> testValue = entry.value;

      return TestModel(
        title: testValue['title'],
        description: testValue['description'],
        questions: _parseQuestionModels(testValue['questions']),
      );
    }).toList();
  }

  static List<QuestionModel> _parseQuestionModels(Map<dynamic, dynamic> data) {
    return data.entries.map((entry) {
      final Map<dynamic, dynamic> questionValue = entry.value;

      return QuestionModel(
        question: questionValue['question'],
        options: _parseTestOptions(questionValue['options']),
      );
    }).toList();
  }

  static List<TestOption> _parseTestOptions(Map<dynamic, dynamic> data) {
    return data.entries.map((entry) {
      final Map<dynamic, dynamic> optionValue = entry.value;

      return TestOption(
        option: optionValue['option'],
        scores: Map<String, int>.from(optionValue['scores']),
      );
    }).toList();
  }
}
