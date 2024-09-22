import 'dart:ui';

import 'package:churchlab/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

/// Widget para la pantalla del visor del pdf
// ignore: must_be_immutable
class OpenPdfScreen extends StatefulWidget {

  /// Dirección url del pdf de la clase
  String url;

  OpenPdfScreen({
    super.key,
    required this.url
    });

  @override
  State<OpenPdfScreen> createState() => _OpenPdfScreenState();
}

class _OpenPdfScreenState extends State<OpenPdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey[200],
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 35.0, sigmaY: 35.0),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(false),
        ),
        title: CmmTitleText(
          title: 'Nombre de la clase',
          isBool: true,
          fontSize: 18,
          ),
      ),
      body: PDF().cachedFromUrl(
        widget.url,
        placeholder: (progress) => Center(child: CmmText(title: '$progress %', isBool: false,)),
        errorWidget: (error) => Center(child: CmmText(title: error.toString(), isBool: false,)),
      ),
      );
  }
}