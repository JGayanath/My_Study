import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:signature/signature.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

class Digital_Signature extends StatefulWidget {
  const Digital_Signature({Key? key}) : super(key: key);

  @override
  State<Digital_Signature> createState() => _Digital_SignatureState();
}

class _Digital_SignatureState extends State<Digital_Signature> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  );

  Uint8List? img;

  final GlobalKey<State<StatefulWidget>> _printKey = GlobalKey();

  void printScreen() {

    Printing.layoutPdf(onLayout: (format) async {
      final doc = pw.Document();

      final image = await WidgetWraper.fromKey(key: _printKey, pixelRatio: 2.0);
      doc.addPage(
        pw.Page(
          pageFormat: format,
          build: (context) {
            return pw.Center(
              child: pw.Image(
                image,
              ),
            );
          }
          ),);
      return doc.save();
    },

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepaintBoundary(
        key: _printKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Signature(
              controller: _controller,
              width: 200,
              height: 200,
              backgroundColor: Colors.lightBlueAccent,
            ),
            ElevatedButton(
                onPressed: () {
                  _controller.clear();
                },
                child: Text("Clear")),
            ElevatedButton(
                onPressed: () async {
                 var tem = await _controller.toPngBytes();
                  setState(() {
                    img=tem;
                  });
                },
                child: Text("View as an image")),
            ElevatedButton(
                onPressed: () {
                  printScreen();
                },
                child: Text("PDF Preview")),
            img != null
                ? Image.memory(
                    img!,
                    height: 200,
                    width: 200,
                    fit: BoxFit.fill,
                  )
                : Container(),

          ],
        ),
      ),
    );
  }
}
