// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PDFViewer extends StatelessWidget {
  final String pdfUrl;

  const PDFViewer(this.pdfUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(pdfUrl)),
      ),
    );
  }
}
