import 'package:flutter/material.dart';
import 'package:gosports/models/pertandingan.dart';
import 'package:gosports/models/pesertas.dart';
import 'package:gosports/providers/tim_provider.dart';
import 'package:gosports/shared/theme.dart';
import 'package:provider/provider.dart';

class MatchLiveCardHasil extends StatelessWidget {
  final PertandinganModel item;
  final VoidCallback onClicked;

  const MatchLiveCardHasil({
    Key? key,
    required this.item,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Card(
        child: Container(
          padding: const EdgeInsets.only(right: 15),
          width: double.infinity,
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.status ?? '-',
                      style: redTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: semibold,
                      ),
                    ),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 4.0),
                    //   child: const Icon(
                    //     Icons.circle,
                    //     size: 10,
                    //     color: Color(0xfff34141),
                    //   ),
                    // ),
                  ],
                ),
              ),
              ChangeNotifierProvider<TimProvider>(
                create: (context) =>
                    TimProvider()..getTim(item.pesertas.first.links),
                child: Consumer<TimProvider>(
                  builder: (context, value, child) => Row(
                    children: [
                      Container(
                        width: 74,
                        height: 31,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                            top: 8,
                            bottom: 8,
                            right: 8,
                          ),
                          child: Consumer<TimProvider>(
                            builder: (context, value, child) => Text(
                              value.tim?.nama ?? '-',
                              textAlign: TextAlign.end,
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Image.network(
                          value.tim?.logo ?? '-',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  '120',
                  style: orangeTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                '-',
                style: blackTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '105',
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              ChangeNotifierProvider<TimProvider>(
                create: (context) =>
                    TimProvider()..getTim(item.pesertas.last.links),
                child: Consumer<TimProvider>(
                  builder: (context, value, child) => Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Image.network(
                          value.tim?.logo ?? '-',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        width: 74,
                        height: 31,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            value.tim?.nama ?? '-',
                            style: blackTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: regular,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
