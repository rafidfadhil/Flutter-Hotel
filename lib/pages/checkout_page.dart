import 'package:flutter/material.dart';
import 'package:uts_melati/theme.dart';
import 'package:intl/intl.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int inputValue = 0;
  int totalBayar = 0;
  double totalDiscount = 0;
  final currencyFormatter = NumberFormat('#,##0.00', 'ID');

  void jumlahTotal() {
    setState(() {
      totalDiscount = (inputValue * 450000000) * 0.1;
      totalBayar = (inputValue * 450000000) - totalDiscount.toInt();
    });
  }

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
                        Text(
                          'Price',
                          style: whiteTextStyle2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Rp. 450.000.000 / m2',
                          style: whiteTextStyle2.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ));
    }

    Widget inputJumlahBeli() {
      return Container(
        margin: EdgeInsets.only(
          top: edge,
          left: edge,
          right: edge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jumlah Meter Persegi',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: greyColor)),
              child: Center(
                child: TextFormField(
                  style: blackTextStyle,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    int? parsedValue = int.tryParse(value);
                    if (parsedValue != null) {
                      setState(() {
                        inputValue = parsedValue;
                      });
                    }
                  },
                  decoration: InputDecoration.collapsed(
                    hintText: 'Masukkan Jumlah Meter Persegi',
                    hintStyle: greyTextStyle.copyWith(fontSize: 14),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Voucher Code',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: greyColor)),
              child: Center(
                child: TextFormField(
                  style: blackTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'COUPON',
                    hintStyle: blackTextStyle.copyWith(fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget kalkulasi() {
      return Container(
        margin: EdgeInsets.only(
          top: edge,
          left: edge,
          right: edge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jumlah Paket: $inputValue',
              style: blackTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Voucher Code: Disc 10%',
              style: blackTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      );
    }

    Widget total() {
      return Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: edge,
          left: edge,
          right: edge,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: greyColor)),
        child: Column(
          children: [
            Text(
              'Total Pembayaran',
              style: blackTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Rp ${currencyFormatter.format(totalBayar)}',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomNav() {
      return Container(
        margin: EdgeInsets.all(edge),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: jumlahTotal,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Hitung',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Checkout',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: bottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            inputJumlahBeli(),
            kalkulasi(),
            total(),
          ],
        ),
      ),
    );
  }
}
