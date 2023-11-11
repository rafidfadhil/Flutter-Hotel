import 'package:flutter/material.dart';
import 'package:uts_melati/pages/detail_produk_page.dart';
import 'package:uts_melati/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          margin: EdgeInsets.only(left: edge, right: edge, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kategori',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rumah',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: greyColor,
                      )
                    ],
                  ),
                ],
              ),
              Image.asset(
                'assets/IC_Notification.png',
                width: 27,
              )
            ],
          ));
    }

    Widget cariRumah() {
      return Container(
        margin: EdgeInsets.only(left: edge, right: edge, top: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/IC_Search.png',
                        width: 25,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: TextFormField(
                          style: primaryTextStyle,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Cari Rumah Impian Anda',
                            hintStyle: greyTextStyle.copyWith(fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Image.asset(
                  'assets/IC_Filter.png',
                  width: 25,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: edge,
              ),
              Container(
                height: 36,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryColor),
                child: Center(
                  child: Text(
                    'Jakarta',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                height: 36,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: secondaryColor),
                child: Center(
                  child: Text(
                    'Bandung',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                height: 36,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: secondaryColor),
                child: Center(
                  child: Text(
                    'Surabaya',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                height: 36,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: secondaryColor),
                child: Center(
                  child: Text(
                    'Semarang',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget populer() {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: edge, right: edge, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Populer',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See more',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: edge,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailProduk()));
                  },
                  child: SizedBox(
                      child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 290,
                        width: 237,
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
                        width: 237.31,
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
                      Padding(
                        padding: EdgeInsets.only(left: edge, bottom: edge),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jakarta',
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Hunian Ibu Kota',
                              style: whiteTextStyle2.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  width: edge,
                ),
                SizedBox(
                    child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      height: 290,
                      width: 237,
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
                          'assets/Image2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 237.31,
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
                    Padding(
                      padding: EdgeInsets.only(left: edge, bottom: edge),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bandung',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Dingin Sejuk Asri',
                            style: whiteTextStyle2.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  width: edge,
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget rekomendasi() {
      return Column(children: [
        Padding(
          padding:
              EdgeInsets.only(left: edge, right: edge, top: 30, bottom: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rekomendasi',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'See more',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: edge,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 75,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/Image3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Surabaya',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Rp. 200.000.000 / m2',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/IC_Bed.png', width: 25),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '5 Kamar Tidur',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: edge,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/IC_Bath.png', width: 25),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '3 Kamar Mandi',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: edge,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 75,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/Image4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Semarang',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Rp. 150.000.000 / m2',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/IC_Bed.png', width: 25),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '4 Kamar Tidur',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: edge,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/IC_Bath.png', width: 25),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '2 Kamar Mandi',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ]);
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                cariRumah(),
                categories(),
                populer(),
                rekomendasi()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
