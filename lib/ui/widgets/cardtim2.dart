import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';

class CardTim2 extends StatelessWidget {
  final String logo1, namatim1, namatim2, logo2;
  final VoidCallback onClicked;

  const CardTim2({
    Key? key,
    required this.logo1,
    required this.namatim1,
    required this.namatim2,
    required this.logo2,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        height: 49,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 8,
              height: 49,
              decoration: const BoxDecoration(
                  color: Color(0xffFF7E1F),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(6))),
            ),
            InkWell(
              onTap: onClicked,
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 17),
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(logo1),
                            fit: BoxFit.cover,
                            opacity: 0.5),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 17),
                      child: Text(
                        namatim1,
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: semibold,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 150),
                    child: Text(
                      namatim2,
                      style: blackTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 17),
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(logo2), fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
