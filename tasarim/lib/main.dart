
import 'package:flutter/material.dart';
import 'components/buildNavigation.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                // ANA BAŞLIK
                buildBaslik("Ana Sayfa"),

                //ARADAKİ BOŞLUK
                SizedBox(
                  height: 15,
                ),

                // BANNER BURADAN AŞAĞISI

                ustBanner(),
                //

                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Container(
                    child: Row(
                      children: [
                        //İLK ELEMAN
                        yapButton("Kategoriler", Icons.menu,buildBaslik(" "),
                            context),
                        yapButton(
                            "Favoriler", Icons.star, buildBaslik(" "), context),
                        yapButton("Hediyeler", Icons.card_giftcard,
                            buildBaslik(" "), context),
                        yapButton("Çok Satanlar", Icons.person,
                            buildBaslik(" "), context),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),

                // ORTADAKİ SALES YAZISI !!
                Container(
                  child: Center(
                    child: Text(
                      "Ürünler",
                      style: TextStyle(
                          fontFamily: "NuosuSIL",
                          fontSize: 28,
                          color: Color(0xff0A1034),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // ORTADAKİ İNDİRİMDEKİ ÜRÜNLER
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildUrunler("Akıllı Telefonlar",
                        "assets/images/samsung.png", "-%50", screenWidth),
                    buildUrunler("Monitörler", "assets/images/samsung.png",
                        "-%50", screenWidth),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildUrunler("Akıllı Telefonlar",
                        "assets/images/samsung.png", "-%50", screenWidth),
                    buildUrunler("Monitörler", "assets/images/samsung.png",
                        "-%50", screenWidth),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildUrunler("Akıllı Telefonlar",
                        "assets/images/samsung.png", "-%50", screenWidth),
                    buildUrunler("Monitörler", "assets/images/samsung.png",
                        "-%50", screenWidth),
                  ],
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, -3),
                      color: Colors.black.withOpacity(0.70),
                      blurRadius: 5),
                ],
                color: Color(0xffEFF5FB),
              ),
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  navIkon(true, Icons.home_filled),
                  navIkon(false, Icons.search),
                  navIkon(false, Icons.shopping_basket),
                  navIkon(false, Icons.person),
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}

Widget buildBaslik(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 32, fontFamily: "NuosuSIL",color: Color(0xff0A1034), fontWeight: FontWeight.bold),
    ),
  );
}

Widget ustBanner() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(left: 30, top: 15, bottom: 19, right: 30),
    decoration: BoxDecoration(
        color: Color(0xff7289DA), borderRadius: BorderRadius.circular(5.0)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bose Hoparlör",
              style: TextStyle(
                  fontFamily: "NuosuSIL",
                  fontSize: 18,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "USD 279",
                style: TextStyle(
                    fontFamily: "NuosuSIL",
                    fontSize: 12,
                    color: Color(0xffE0ECF8),
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        Image.asset("assets/images/speaker.png"),
      ],
    ),
  );
}

Widget yapButton(@required String text, @required IconData icon,
    @required Widget widget, @required BuildContext context) {
  // BURASI BUTONLARI TIKLANABİLİR YAPIYOR !!
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 19, right: 19, top: 22, bottom: 22),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xff7289DA)),
            child: Icon(
              icon,
              color: Color(0xff0001FC),
              size: 28,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: TextStyle(fontFamily: "NuosuSIL",fontWeight: FontWeight.w500, fontSize: 14),
          )
        ],
      ),
    ),
  );
}

Widget buildUrunler(@required String text, @required String photo,
    @required String discount, @required screenWidth) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          child: Text(discount,
              style: TextStyle(fontFamily: "NuosuSIL",color: Color(0xff1F53E4), fontSize: 12)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0xffE0ECF8)),
        ),
        SizedBox(height: 22),
        Center(child: Image.asset(photo)),
        SizedBox(height: 22),
        Center(child: Text(text,style: TextStyle(fontFamily: "NuosuSIL",),))
      ],
    ),
  );
}
