import 'package:flutter/material.dart';

import '../constants.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Total Orders",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "118",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Pending Packing",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "118",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Pending Delivery",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "118",
    color: Color(0xFF6EEFC8),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Delivered",
    numOfFiles: 5328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "118",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),

];
