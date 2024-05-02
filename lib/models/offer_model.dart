// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/rendering.dart';

class OfferPromo {
  String img;
  String title;
  String title2;
  String icon;
  String appName;
  String subtitle;
  String rate;
  OfferPromo({
    required this.img,
    required this.title,
    required this.title2,
    required this.icon,
    required this.appName,
    required this.subtitle,
    required this.rate,
  });
}

class OfferProductList {
  String img;
  String prevRate;
  String rate;
  OfferProductList({
    required this.img,
    required this.prevRate,
    required this.rate,
  });
}
