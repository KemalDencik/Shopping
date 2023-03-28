import 'package:flutter/material.dart';
import 'package:magaza/urun_detay.dart';

import 'package:magaza/urunler.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);
  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekliste;
  @override
  void initState() {
    super.initState();
    if (widget.kategori == 'temel gıda') {
      gosterilecekliste = <Widget>[
        urunkarti('Zeytin Yağı','Dalından gelen doğal zeytin mahsulü','100 TL','https://cdn.pixabay.com/photo/2015/10/02/15/59/olive-oil-968657__480.jpg',mevcut: true,),
        urunkarti('Şeker','En zararsız şeker ','90 TL','https://cdn.pixabay.com/photo/2020/04/13/22/55/sugar-5040276_960_720.jpg',mevcut: false),
        urunkarti('Soğan','Taza taze soğan','5 TL','https://cdn.pixabay.com/photo/2016/03/05/22/59/onions-1239423_960_720.jpg',mevcut: true),
        urunkarti('Patates','Kızarınca çıkır Haşlanınca pıtır','3.50 TL','https://cdn.pixabay.com/photo/2014/08/06/20/32/potatoes-411975__340.jpg',mevcut: true),
        urunkarti('Biber','Acının öz adresinden gelen biberler','7.50 TL','https://cdn.pixabay.com/photo/2014/08/18/23/11/bell-peppers-421087__340.jpg',mevcut: true),
        urunkarti('Koli Yumurta','Taza taze köy yumurtaları','35 TL','https://cdn.pixabay.com/photo/2017/03/15/09/49/easter-eggs-2145667__340.jpg',mevcut: true),
        urunkarti('Süt','Köyden gelen lezzet ','9.90 TL','https://cdn.pixabay.com/photo/2016/08/11/23/25/glass-1587258__480.jpg',mevcut: false),
        urunkarti('1 Kg Et','Günlük taze et','165 TL','https://cdn.pixabay.com/photo/2013/06/09/06/07/meat-123668__340.jpg',mevcut: false),
        
      ];
    } else if (widget.kategori == 'şekerleme') {
      gosterilecekliste = <Widget>[
         urunkarti('Çikolata','En güzel lezzet ','20 TL','https://cdn.pixabay.com/photo/2013/09/18/18/24/chocolate-183543__480.jpg',mevcut: true),
         urunkarti('Kek','Fırından yeni çıkmış gibi','13.50 TL','https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011__340.jpg',mevcut: true),
        urunkarti('Bonibon','Çocukların aşkı','5.99 TL','https://cdn.pixabay.com/photo/2012/06/27/15/02/candy-50838__340.jpg',mevcut: true),
         urunkarti('Jelibon','Hariboyla mutlu ol','21.50 TL','https://cdn.pixabay.com/photo/2013/08/10/18/13/candies-171342__340.jpg',mevcut: true),
          urunkarti('Makaron','İster pişir ister hüplet','32.99 TL','https://cdn.pixabay.com/photo/2020/02/16/20/33/macarons-4854732__340.jpg',mevcut:false),
           urunkarti('Kurabiye','Anne elinden çıkmış gibi','52.90 TL','https://cdn.pixabay.com/photo/2022/06/15/11/19/cookies-7263656__340.png',mevcut: true),
           urunkarti('Cici Bebe','Sevgilime özel','Prensese beleş','https://media.istockphoto.com/id/951128992/tr/foto%C4%9Fraf/%C3%A7ikolatal%C4%B1-kurabiye-yemek-g%C3%BCl%C3%BCmseyen-okul-%C3%B6ncesi-k%C4%B1z.webp?s=612x612&w=is&k=20&c=7qTTOlqHGgfM51uZ3LlkOhpIH_tpVvYd60D7CzK18a4=',mevcut: true),
      ];
    } else if (widget.kategori == 'içecekler') {
      gosterilecekliste = <Widget>[
       urunkarti('Çay','Türkiyemin dağ eteklerinden gelen lezzet','64.90 TL','https://cdn.pixabay.com/photo/2017/05/19/07/34/teacup-2325722__340.jpg',mevcut: true),
        urunkarti('Kola','Şekersiz ve en zararsız kola','12.90 TL','https://cdn.pixabay.com/photo/2014/09/26/19/51/drink-462776__480.jpg',mevcut: true),
        urunkarti('Türk Kahvesi','Taze çekilmiş kahve','59.99 TL','https://cdn.pixabay.com/photo/2019/08/18/00/21/coffee-4413194__340.jpg',mevcut: true),
        urunkarti('cappuccino','Lüksün adresi','80.50 TL','https://cdn.pixabay.com/photo/2017/03/17/10/29/coffee-2151200__340.jpg',mevcut: false),
        urunkarti('Meyve Suyu','Dalından gelen meyveler','45 TL','https://cdn.pixabay.com/photo/2016/08/23/15/52/fresh-orange-juice-1614822__480.jpg',mevcut: true),
        urunkarti('Soda','Yediğini hazmet rahat et','25.90 TL','https://cdn.pixabay.com/photo/2017/08/05/20/15/cocktail-2585270__340.jpg',mevcut: false),
      ];
    } else if (widget.kategori == 'temizlik') {
      gosterilecekliste = <Widget>[
       urunkarti('Çamaşır Deterjanı','Kadınlara yardımcı olan güç','60 TL','https://cdn.pixabay.com/photo/2016/07/06/06/53/washing-powder-1500058__340.jpg',mevcut: true),
        urunkarti('Karbonat','','32.90 TL','https://cdn.pixabay.com/photo/2015/05/15/17/16/baking-soda-768950__340.jpg',mevcut: true),
        urunkarti('Havlu','Yumuşak dokusuyla her duştan sonra rahatlama hissi','60 TL','https://cdn.pixabay.com/photo/2014/12/05/08/45/towels-557655__340.jpg',mevcut: true),
        urunkarti('5 lt Sabun','Ellerimizi yıkayalım hastalıktan kaçalım','139 TL','https://cdn.pixabay.com/photo/2015/02/28/15/42/soap-653683__340.jpg',mevcut: true),
        urunkarti('Oto Yıkama','Bu deterjan sayesinde arabanıza tekrardan aşık olacaksınız','69.99 TL','https://cdn.pixabay.com/photo/2016/11/14/02/34/auto-1822415__340.jpg',mevcut: false),
      ];
    }
  }

  Widget urunkarti(String isim,String urun_detay, String fiyat, String resimyolu,{bool mevcut=false}) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Urundetay(
          isim: isim,
          fiyat: fiyat,
          resimyolu: resimyolu,
          mevcut: mevcut,
          urun_detay: urun_detay,
        )));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: resimyolu,
              child: Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            resimyolu,),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              isim,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8.0,),
            Text(
              fiyat,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: Colors.orange[400]),
            ),
           
            
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12.0, //üst üste olanlara mesafe koyar
        crossAxisSpacing: 12.0, //alt alta olanlara mesafe koyar
        padding: EdgeInsets.all(10.0),
        childAspectRatio: 1, //eni boyuna eşit olsun demiş oluyoruz
        children: gosterilecekliste);
  }
}
