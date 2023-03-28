import 'package:flutter/material.dart';
import 'package:magaza/kategori.dart';

class urunler extends StatefulWidget {
  @override
  State<urunler> createState() => _urunlerState();
}

class _urunlerState extends State<urunler>with SingleTickerProviderStateMixin {
  TabController televizyonkontrol;
  @override
  void initState() {
    super.initState();
    televizyonkontrol = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          indicatorColor: Colors.red,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey[300],
          isScrollable: true,// sekmelerin yatay eksende sekmesini dağlar
          labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
          controller: televizyonkontrol,
          tabs: [
          Tab(child: Text('Temel Gıda'),),
          Tab(child: Text('Şekerleme'),),
          Tab(child: Text('İçecekler'),),
          Tab(child: Text('Temizlik'),),]),
        Expanded(
          child: TabBarView(
            
            controller: televizyonkontrol,
            children: [
             Kategori(kategori: 'temel gıda',),
             Kategori(kategori: 'şekerleme',),
             Kategori(kategori: 'içecekler',),
             Kategori(kategori: 'temizlik',),],
          ),
        ),
      ],
    );
  }
}
