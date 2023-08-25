import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> urlLaunch (context , String url) async {
  Uri Url = Uri.parse(url);
  if (await canLaunchUrl(Url)){
  await launchUrl(Url);
  }else {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Cannot Open $url')));
  }
}