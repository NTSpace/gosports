import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/pertandingan_jadwal.dart';
import 'package:gosports/ui/widgets/tohasil_button.dart';
import 'package:page_transition/page_transition.dart';

class KodeDialog extends StatefulWidget {
  final String title, description;

  const KodeDialog({Key? key, required this.description, required this.title})
      : super(key: key);

  @override
  State<KodeDialog> createState() => _KodeDialogState();
}

class _KodeDialogState extends State<KodeDialog> {
  late TextEditingController kodecontroller;

  @override
  void initState() {
    super.initState();
    kodecontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          margin: const EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
            color: kWhiteColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 1.0)),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                widget.description,
                style: const TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                  left: 24,
                  top: 15,
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: kodecontroller,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kGreyColor,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kBlackColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: kGreyColor,
                    contentPadding: const EdgeInsets.all(24),
                  ),
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    color: kBlackColor,
                    fontWeight: regular,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ToHasilButton(
                  text: 'MASUK',
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const PertandinganJadwal(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
