import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'dart:html' as html;


class DownloadCv {
static Future<void> downloadFile() async {
    // Define the asset path and the file name
    String assetPath = 'assets/pdf/ats summary Ahmed Tamer Elsayed Flutter Developer .pdf'; // Change to your asset path
    String fileName = 'ats summary Ahmed Tamer Elsayed Flutter Developer .pdf'; // Name of the file

    // Load the file from assets
    ByteData data = await rootBundle.load(assetPath);
    List<int> bytes = data.buffer.asUint8List();

    // Convert bytes to Blob
    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', fileName)
      ..click();
    html.Url.revokeObjectUrl(url); // Clean up the URL
  }
}


