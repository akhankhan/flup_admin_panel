import 'dart:developer';

import 'package:flutter/material.dart';

import '../customer/customer_screen.dart';
import '../dashboard/dashboard_screen.dart';
import '../discount/discount_screen.dart';
import '../ledger/ledger_screen.dart';
import '../market/market_screen.dart';
import '../order/order_screen.dart';
import '../setting/setting_screen.dart';
import '../taxes/taxes_screen.dart';
import '../traking/traking_screen.dart';

class NavigationProvider with ChangeNotifier {
  List<Widget> screenWidget = [
    const DashBoardScreen(),
    const MarketScreen(),
    const OrderScreen(),
    const TrakingScreen(),
    const CustomerScreen(),
    const DiscountScreen(),
    const LedgerScreen(),
    const TaxesScreen(),
    const SettingScreen(),
  ];
  int _screenIndex = 0;
  bool _isCollapsed = false;
  bool _isSwitchOn = false;

  bool get isCollapsed => _isCollapsed;
  bool get isSwitchOn => _isSwitchOn;
  int get screenIndex => _screenIndex;

  void toggleIsCollapsed() {
    _isCollapsed = !isCollapsed;
    notifyListeners();
  }

  void toggleSwitch(value) {
    _isSwitchOn = value;
    notifyListeners();
  }

  void toggleScreen(int index) {
    _screenIndex = index;
    notifyListeners();
    log("check value:$screenIndex");
  }
}
