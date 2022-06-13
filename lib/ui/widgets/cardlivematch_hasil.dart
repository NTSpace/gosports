import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class MatchLiveCardHasil extends StatelessWidget {
  final String logo1, logo2, namatim1, namatim2, status, skor1, skor2;
  final VoidCallback onClicked;

  const MatchLiveCardHasil({
    Key? key,
    required this.status,
    required this.logo1,
    required this.logo2,
    required this.namatim1,
    required this.namatim2,
    required this.onClicked,
    required this.skor1,
    required this.skor2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Container(
          padding: EdgeInsets.only(right: 15),
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
                      status,
                      style: redTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: semibold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4.0),
                      child: const Icon(
                        Icons.circle,
                        size: 10,
                        color: Color(0xfff34141),
                      ),
                    ),
                  ],
                ),
              ),
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
                  child: Text(
                    namatim1,
                    textAlign: TextAlign.end,
                    style: blackTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: regular,
                    ),
                  ),
                ),
              ),
              Container(
                width: 32,
                height: 32,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Image.asset(
                  logo1,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  skor1,
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
                skor2,
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 32,
                height: 32,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Image.asset(
                  logo2,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: 74,
                height: 31,
                padding: const EdgeInsets.only(right: 4.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    namatim2,
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
    );
  }
}
