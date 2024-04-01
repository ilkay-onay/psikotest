import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yardım'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hoş Geldiniz!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'PsikoAnalizci uygulamasının yardım sayfasına hoş geldiniz. Bu sayfa, uygulamanın temel özellikleri ve kullanımı hakkında size bilgi vermek için tasarlanmıştır.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Nasıl Kullanılır:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '1. Ana Sayfa:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Uygulamaya giriş yaptığınızda sizi karşılayan ana ekrandan, "Yardım" sayfasına ulaşabilirsiniz. Bu sayfa, uygulamanın temel kullanımı hakkında genel bilgiler içerir.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '2. Test Çözme:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Erginlik düzeyinizi seçtikten sonra, Zeka veya Kişilik testlerinden birini seçebilir ve çözebilirsiniz. Çözülen test sonuçlarınızı "Testi Bitir" tuşuna basarak görebilirsiniz.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Sorularınız mı var?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Uygulama ile ilgili herhangi bir sorunuz veya öneriniz varsa, lütfen bize ulaşın: destek@psikoanalizci.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
