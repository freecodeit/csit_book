import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class one extends StatefulWidget {
  @override
  _one createState() => _one();
}

class _one extends State<one> {
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
        title: Text('Probability'),
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
        'https://raw.githubusercontent.com/freecodeit/csitnotes/bbef0b4a78d7757ccae1019686411cb851800016/Statics%20Notes/Ch%203%20Probability.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
