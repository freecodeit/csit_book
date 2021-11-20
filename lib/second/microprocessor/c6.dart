import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class seven extends StatefulWidget {
  @override
  _seven createState() => _seven();
}

class _seven extends State<seven> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text('Memory segment'),
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
        'https://raw.githubusercontent.com/freecodeit/csitnotes/bbef0b4a78d7757ccae1019686411cb851800016/Microprocessor/memseg.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
