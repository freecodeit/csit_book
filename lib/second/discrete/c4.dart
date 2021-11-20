import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class five extends StatefulWidget {
  @override
  _five createState() => _five();
}

class _five extends State<five> {
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
        title: Text('Integers Unit'),
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
        'https://raw.githubusercontent.com/freecodeit/csitnotes/bbef0b4a78d7757ccae1019686411cb851800016/Discrete%20Structures/Discrete_Integers_Unit2.1.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
