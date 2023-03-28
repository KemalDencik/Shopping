import 'package:flutter/material.dart';
import 'package:magaza/sepetim.dart';
import 'package:magaza/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'mağaza',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Anasayfa());
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _aktificerik = 0;
  List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();
    _icerikler = [
      urunler(),
      sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Kemal Dencik'),
              accountEmail: Text('Kemal0101@gmail.com'),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/11/10/05/48/user-2935527__340.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              decoration: BoxDecoration(color: Colors.orange[400]),
            ),
            ListTile(
              title: Text('Siparişlerim'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Kuponlarım'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Ayarlar'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Çıkış Yap'),
              onTap: () {
                Navigator.pop(context);
              },
            ), //menü seçeneği ekle fayans içinde gösterir
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          'BİR YEMEKDEN FAZLASI ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
      ),
      body: _icerikler[_aktificerik],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktificerik, //bottoma hangi butona bastığını gösterir
        selectedItemColor: Colors.orange, //aktif olan butonun rengi
        unselectedItemColor: Colors.black, //pasif olan butonun rengi
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Ürünler')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: ('Sepetim')),
        ],
        onTap: (int tiklananbuton) {
          setState(() {
            _aktificerik = tiklananbuton;
          });
        },
      ),
    );
  }
}
