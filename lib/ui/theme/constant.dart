import 'package:flutter/material.dart';
import '../ui.dart';
import 'package:easy_localization/easy_localization.dart';

class Constants {
  static var pages = <Widget>[
    const Contracts(),
    const History(),
    const NewContract(),
    const Saved(),
    const Profile(),
  ];
  static List<String> titles = [
    'contract'.tr(),
    'history'.tr(),
    'news'.tr(),
    'saved'.tr(),
    'profile'.tr(),
  ];
  static List<String> statusOptions = <String>[
    'Paid'.tr(),
    'In process'.tr(),
    'Rejected by Payme'.tr(),
    'Rejected by IQ'.tr(),
  ];
  static List<String> entityOptions = <String>[
    'Individual'.tr(),
    'Legal Entity'.tr(),
  ];
}
