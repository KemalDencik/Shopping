import 'package:flutter/material.dart';

class sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Text(
            'SEPETİM',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black38),
          ),
        ),
        ListTile(
          title: Text('ÇİKOLATALI GOFRET'),
          subtitle: Text('2 X 5'),
          trailing: Text('10 TL'),
        ),
        ListTile(
          title: Text('KOLA'),
          subtitle: Text('3 X 10'),
          trailing: Text('30 TL'),
        ),
        ListTile(
          title: Text('KEK'),
          subtitle: Text('5 X 5'),
          trailing: Text('25 TL'),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(
                children: <Widget>[
                  Text(
                    'Toplam Tutar',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '65 TL',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            child: Center(
              child: Text(
                'ALIŞVERİŞİ TAMAMLA',
                
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
