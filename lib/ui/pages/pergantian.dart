import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:gosports/shared/theme.dart';

class PergantianPage extends StatefulWidget {
  const PergantianPage({Key? key}) : super(key: key);

  @override
  State<PergantianPage> createState() => _PergantianPageState();
}

class _PergantianPageState extends State<PergantianPage> {
  List<String> data = [
    'Stephen Curry',
    'Klay Thompson',
    'Draymond Green',
    'Jordan Poole',
    'Kevon Looney',
    'Lebron James',
    'Jayson Tatum'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kDarkColor,
            leading: IconButton(
              icon: Image.asset(
                'assets/back_icon.png',
                width: 12,
              ),
              onPressed: () {},
            ),
            title: Text(
              'STARTING TIM',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 20,
              ),
            ),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Pemain masuk',
                      style: greyTextStyle.copyWith(
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: DropdownSearch<String>(
                    items: data,
                    selectedItem: '00 - Nama',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    child: Text(
                      'Simpan',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
