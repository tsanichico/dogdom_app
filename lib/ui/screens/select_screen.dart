import 'package:dogdom_app/models/features_item.dart';
import 'package:dogdom_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class SelectScreen extends StatelessWidget {
  // List<FeaturesItem> _items = [
  //   FeaturesItem(
  //     name: 'Ranking',
  //     imageUrl: 'assets/illustrations/ranking.png',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeaturesItem(
                    name: 'Ranking',
                    imageUrl: 'assets/illustrations/ranking.png',
                  ),
                  FeaturesItem(
                    name: 'Discuss',
                    imageUrl: 'assets/illustrations/discuss.png',
                  ),
                  FeaturesItem(
                    name: 'Surrounding',
                    imageUrl: 'assets/illustrations/cart.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: Container(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/carousel1.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/carousel2.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Judul card'),
                    subtitle: Text('Deskripsi card'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      OutlinedButton(
                        child: const Text('Tombol 1'),
                        onPressed: () {/* Action tombol 1 */},
                      ),
                      OutlinedButton(
                        child: const Text('Tombol 2'),
                        onPressed: () {/* Action tombol 2 */},
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
///// EF : 1.2 jt - 2.5 / perbulan
///tergantung berapa bulan durasi nya
///
///
