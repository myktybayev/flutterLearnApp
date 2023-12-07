import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class PDFViewer extends StatelessWidget {
  final String pdfUrl;

  PDFViewer(this.pdfUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(pdfUrl)),
      ),
    );
  }
}

