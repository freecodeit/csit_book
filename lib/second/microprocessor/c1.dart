import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class two extends StatefulWidget {
  @override
  _two createState() => _two();
}

class _two extends State<two> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  PdfTextSearchResult _searchResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text('8085 Microprocessor by Ramesh Gaonkar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://raw.githubusercontent.com/freecodeit/csitnotes/bbef0b4a78d7757ccae1019686411cb851800016/Microprocessor/8085%20Microprocessor%20-%20Ramesh%20Gaonkar.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
