import 'package:flutter/material.dart';

class Urundetay extends StatelessWidget {
  final String isim;
  final String fiyat;
  final String resimyolu;
  final bool mevcut;
  final String urun_detay;

  const Urundetay({Key key, this.isim, this.fiyat, this.resimyolu, this.mevcut,this.urun_detay})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: resimyolu,
                child: Image.network(resimyolu),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                isim,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                fiyat,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[400],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Text(
                  urun_detay,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                  color: mevcut ? Colors.orange[400] : Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    mevcut ? 'Sepete Ekle' : 'Stokta yok',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
