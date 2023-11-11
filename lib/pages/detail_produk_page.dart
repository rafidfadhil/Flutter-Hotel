import 'package:flutter/material.dart';
import 'package:uts_melati/pages/checkout_page.dart';
import 'package:uts_melati/theme.dart';

class DetailProduk extends StatelessWidget {
  const DetailProduk({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          margin: EdgeInsets.all(edge),
          child: Stack(
            children: [
              Container(
                height: 290,
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21.38),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0A000000),
                      blurRadius: 1.07,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x0A000000),
                      blurRadius: 6.41,
                      offset: Offset(0, 2.14),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x0F000000),
                      blurRadius: 25.66,
                      offset: Offset(0, 17.10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/Image1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 290.76,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(0.00, -1.00),
                    end: const Alignment(0, 1),
                    colors: [
                      const Color(0x000C0C0C),
                      Colors.black.withOpacity(0.800000011920929)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21.38),
                  ),
                ),
              ),
              Container(
                height: 290,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(edge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: ShapeDecoration(
                              color:
                                  Colors.black.withOpacity(0.23999999463558197),
                              shape: const OvalBorder(),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: whiteColor,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 36,
                          height: 36,
                          decoration: ShapeDecoration(
                            color:
                                Colors.black.withOpacity(0.23999999463558197),
                            shape: const OvalBorder(),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.bookmark_border_outlined,
                              color: whiteColor,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jakarta',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Hunian Ibu Kota',
                          style: whiteTextStyle2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: edge,
                        ),
                        Row(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 30,
                                    height: 30,
                                    decoration: ShapeDecoration(
                                      color: Colors.white
                                          .withOpacity(0.20000000298023224),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/IC_Bed.png',
                                        width: 25,
                                        color: whiteColor,
                                      ),
                                    )),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  '6 Kamar Tidur',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 34,
                            ),
                            Container(
                                width: 30,
                                height: 30,
                                decoration: ShapeDecoration(
                                  color: Colors.white
                                      .withOpacity(0.20000000298023224),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/IC_Bath.png',
                                    width: 25,
                                    color: whiteColor,
                                  ),
                                )),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              '4 Kamar Mandi',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ));
    }

    Widget deskripsi() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deskripsi',
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: edge,
            ),
            Text.rich(
              TextSpan(
                text:
                    'Hunian di tengah kota Jakarta dengan fasilitas lengkap dan keamanan 24 jam. Cocok untuk...',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: ' Show More',
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget kontak() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: edge, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/Image_Muka.png',
                  width: 42,
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rafid Fadhil Jaidi',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Makelar Analyst',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.call,
                      color: whiteColor,
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.chat_bubble,
                      color: whiteColor,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget gallery() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gallery',
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: edge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80,
                  height: 75,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/Image5.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 75,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/Image6.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 75,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/Image7.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                    child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 75,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x0A000000),
                            blurRadius: 1.07,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x0A000000),
                            blurRadius: 6.41,
                            offset: Offset(0, 2.14),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x0F000000),
                            blurRadius: 25.66,
                            offset: Offset(0, 17.10),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/Image8.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 75,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: const Alignment(0.00, -1.00),
                          end: const Alignment(0, 1),
                          colors: [
                            const Color(0x000C0C0C),
                            Colors.black.withOpacity(0.800000011920929)
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '+5',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                )),
              ],
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.all(edge),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harga',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Rp. 450.000.000 / m2',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CheckoutPage();
                }));
              },
              child: Container(
                width: 130,
                height: 45,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Ambil',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            deskripsi(),
            kontak(),
            gallery(),
            const Spacer(),
            footer()
          ],
        ),
      ),
    );
  }
}
