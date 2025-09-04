import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class text extends StatefulWidget {
  String data;
  double f_s;
  FontStyle f_sty;
  Color col;
  FontWeight f_wei;
   text({super.key,required this.data,required this.f_s,required this.f_sty,required this.col,required this.f_wei});

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.data,style: GoogleFonts.montserrat(
        fontSize: widget.f_s,
        fontStyle: widget.f_sty,
      fontWeight: widget.f_wei,
      color: widget.col
    ));
  }
}
