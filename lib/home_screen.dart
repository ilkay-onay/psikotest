import 'dart:math';
import 'package:flutter/material.dart';
import 'test_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: const Drawer(
        child: TestCategories(),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              QuoteContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class QuoteContainer extends StatelessWidget {
  const QuoteContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final imageHeight = screenSize.height * 0.6;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'PsikoAnalizci V1.00',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.lightBlue.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image.asset(
                getRandomImage(),
                height: imageHeight,
              ),
              const SizedBox(height: 10),
              Text(
                getRandomQuote(),
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  String getRandomImage() {
    final List<String> imagePaths = [
      'assets/images/photo1.jpg',
      'assets/images/photo2.jpg',
      'assets/images/photo3.jpg',
    ];
    final randomIndex = Random().nextInt(imagePaths.length);
    return imagePaths[randomIndex];
  }

  String getRandomQuote() {
    final List<String> inspirationalQuotes = [
      'Hayatta en hakiki mürşit ilimdir.',
      'Her şeyin başı sağlık, her şeyin başı sevgi.',
      'Bir insanı değiştirmenin en iyi yolu, ona değer vermektir.',
      'Dünya, iyilik yapanların ellerine bırakılmış bir mirastır.',
      'Yarının kölesi olma, bugün efendisi ol!',
      'Hayatta en hakiki mürşit ilimdir.',
      'Küçük düşmanları affetmek, büyük zaferler kazanmaktır.',
      'Kendini geliştirmezsen, başkaları seni küçük düşürür.',
    ];
    final randomIndex = Random().nextInt(inspirationalQuotes.length);
    return inspirationalQuotes[randomIndex];
  }
}
