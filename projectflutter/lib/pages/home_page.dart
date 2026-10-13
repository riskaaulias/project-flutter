import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('Masuk Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/container-satu');
              },
              child: Text('Container Satu'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/article-list-screen');
              },
              child: Text('Article List Screen'),
            ),
              ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid-product-page');
              },
              child: Text('Grid Product Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/column-widget');
              },
              child: Text('Column Widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/latihan-column-widget1');
              },
              child: Text('Latihan Colukmn Widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/row-column-widget');
              },
              child: Text('Row Column Widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/row-widget');
              },
              child: Text('Row Widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/expanded-widget');
              },
              child: Text('Expanded Widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/latihan-tiga');
              },
              child: Text('Latihan Tiga'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/latihan-empat');
              },
              child: Text('Latihan Empat'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout-satu');
              },
              child: Text('Layout Satu'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout-dua');
              },
              child: Text('Layout Dua'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout-tiga');
              },
              child: Text('Layout Tiga'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout-empat');
              },
              child: Text('Layout Empat'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sized-box-widget');
              },
              child: Text('Sized Box Widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/container-satu');
              },
              child: Text('Container Satu'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stack-widget');
              },
              child: Text('Stack Widget'),
            ),
          ],
        ),
      ),
    );
  }
}