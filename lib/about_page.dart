import 'package:flutter/material.dart';
import 'license_page.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hakkımızda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
children: [
  const Text(
    'PsikoAnalizci Version 1.00',
    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
  ),
  const SizedBox(height: 20.0),
  const Divider(),
  const SizedBox(height: 20.0),
  const SizedBox(height: 10.0),
  const Text(
    'Merhaba! Ben Ilkay, bu projenin geliştiricisiyim. '
    'Psikolojik destek ve terapi süreçlerini daha erişilebilir kılmak amacıyla oluşturduğum '
    'bu açık kaynak kodlu program, danışanlara ve psikologlara önceden belirlenmiş popüler '
    'psikolojik testleri sunarak daha bilinçli ve kişiselleştirilmiş terapi süreçleri yaşamalarına olanak tanıyor.\n\n'
    'Ben, bireylerin zihinsel sağlıklarıyla ilgili farkındalığı artırmak ve bu alandaki destek sağlamak için bu projeyi hayata geçirdim. '
    'Açık kaynak kodlu olması, topluluk katılımını teşvik etmeyi ve bu alandaki yenilikleri desteklemeyi amaçlıyor. '
    'Herkesin projeye katkıda bulunmasını ve geliştirmemize yardımcı olmasını dilerim.\n\n'
    'Gizlilik ve güvenlik, benim için büyük önem taşıyor. Bu nedenle, kullanıcıların kişisel bilgilerini korumak ve güvende tutmak adına gerekli güvenlik önlemlerini alıyorum. '
    'Aynı zamanda, projenin açık kaynak kodlu olması, şeffaflık ve güvenilirlik konusundaki taahhüdümü yansıtmaktadır.\n\n'
    'Eğer projeye katkıda bulunmak, kullanmak veya herhangi bir geri bildirimde bulunmak istiyorsanız, lütfen benimle iletişime geçmekten çekinmeyin. Birlikte daha sağlıklı bir topluluk yaratmak için buradayız.',
    style: TextStyle(fontSize: 14.0),
  ),
            const Divider(),
              const Text(
    'Lisans',
    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
  ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'GNU General Public License (GPL) Version 3',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'PsikoAnalizci, A system that offers popular psychological tests that people may want.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const Text(
                    'Copyright (C) 2023 Ilkay Onay',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'This program is free software: you can redistribute it and/or modify\n'
                    'it under the terms of the GNU General Public License as published by\n'
                    'the Free Software Foundation, either version 3 of the License, or\n'
                    '(at your option) any later version.\n',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    'This program is distributed in the hope that it will be useful,\n'
                    'but WITHOUT ANY WARRANTY; without even the implied warranty of\n'
                    'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the\n'
                    'GNU General Public License for more details.\n',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    'You should have received a copy of the GNU General Public License\n'
                    'along with this program. If not, see https://www.gnu.org/licenses/.',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FullLicenseScreen()),
                      );
                    },
                    child: const Text('Learn More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

