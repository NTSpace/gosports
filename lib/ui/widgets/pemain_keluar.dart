import 'package:flutter/cupertino.dart';
import 'package:gosports/shared/theme.dart';

class PemainKeluar extends StatefulWidget {
  const PemainKeluar({Key? key}) : super(key: key);

  @override
  State<PemainKeluar> createState() => _PemainKeluarState();
}

class _PemainKeluarState extends State<PemainKeluar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 16, right: 25.5, left: 25.5),
      padding: const EdgeInsets.symmetric(vertical: 12.5),
      decoration: BoxDecoration(
        color: kOrangeColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '01',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 32,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            child: Text(
              'GEORGE HILL',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
