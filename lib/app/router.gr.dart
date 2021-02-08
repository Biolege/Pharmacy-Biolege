// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/accountsScreenView/accountsScreenView.dart';
import '../screens/analyticsScreenView/analyticsScreenView.dart';
import '../screens/buyScreenView/buyScreenView/buyScreenView.dart';
import '../screens/buyScreenView/shopScreen/productDescriptionScreenView/productDescriptionScreenView.dart';
import '../screens/employeesScreenView/employeesScreenView.dart';
import '../screens/homePageScreenView/homePageScreenView.dart';
import '../screens/myProfileScreenView/myProfileScreenView.dart';
import '../screens/notificationScreenView/notificationScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/biolegeCardScreenView/biolegeCardScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/confirmationScreenView/confirmationScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/customerDetailsScreenView/customerDetailsScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/onShopBillScreenView/onShopBillScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/orderPageScreenView/orderPageScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/paymentModeView/paymentModeView.dart';
import '../screens/orderScreenView/createOnlineOrderScreenView/orderConfirmationView/orderConfirmationView.dart';
import '../screens/orderScreenView/onlineOrderScreenView/checkItemsScreenView/checkItemsScreenView.dart';
import '../screens/orderScreenView/onlineOrderScreenView/onlineOrderDetailsScreenView/onlineOrderDetailsScreenView.dart';
import '../screens/orderScreenView/onlineOrderScreenView/orderConfirmationDetailScreenView/orderConfirmationDetailScreenView.dart';
import '../screens/orderScreenView/ordersScreenView/ordersScreenView.dart';
import '../widgets/stockScreenView/importScreen/importMedicineScreenView/importMedicineScreenViewComponent.dart';
import '../widgets/stockScreenView/importScreen/medicineDetailsScreenView/medicineDetailsScreenView.dart';
import '../widgets/stockScreenView/importScreen/myimportsScreenView/myImportsScreenView.dart';
import '../widgets/stockScreenView/stockLayoutScreenView/stockLayoutScreenView.dart';

class Routes {
  static const String homePageScreenView = '/HomePageScreenView';
  static const String ordersScreenView = '/OrdersScreenView';
  static const String stockLayoutScreenView = '/StockLayoutScreenView';
  static const String notificationScreenView = '/NotificationScreenView';
  static const String buyScreenView = '/BuyScreenView';
  static const String employeesScreenView = '/EmployeesScreenView';
  static const String accountsScreenView = '/AccountsScreenView';
  static const String myProfileScreenView = '/MyProfileScreenView';
  static const String analyticsScreenView = '/AnalyticsScreenView';
  static const String onShopBillScreenView = '/OnShopBillScreenView';
  static const String productDescriptionScreenView =
      '/ProductDescriptionScreenView';
  static const String biolegeCardScreenView = '/BiolegeCardScreenView';
  static const String orderPageScreenView = '/OrderPageScreenView';
  static const String customerDetailsScreenView = '/CustomerDetailsScreenView';
  static const String paymentModeView = '/PaymentModeView';
  static const String confirmationScreenView = '/ConfirmationScreenView';
  static const String confirmationDetailsScreenView =
      '/ConfirmationDetailsScreenView';
  static const String orderConfirmationView = '/ConfirmationView';
  static const String checkItemsScreenView = '/CheckItemsScreenView';
  static const String onlineOrderDetailsScreenView =
      '/OnlineOrderDetailsScreenView';
  static const String importMedicine = '/ImportMedicine';
  static const String myImportsScreenView = '/MyImportsScreenView';
  static const String medicineDetails = '/MedicineDetails';
  static const all = <String>{
    homePageScreenView,
    ordersScreenView,
    stockLayoutScreenView,
    notificationScreenView,
    buyScreenView,
    employeesScreenView,
    accountsScreenView,
    myProfileScreenView,
    analyticsScreenView,
    onShopBillScreenView,
    productDescriptionScreenView,
    biolegeCardScreenView,
    orderPageScreenView,
    customerDetailsScreenView,
    paymentModeView,
    confirmationScreenView,
    confirmationDetailsScreenView,
    orderConfirmationView,
    checkItemsScreenView,
    onlineOrderDetailsScreenView,
    importMedicine,
    myImportsScreenView,
    medicineDetails,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePageScreenView, page: HomePageScreenView),
    RouteDef(Routes.ordersScreenView, page: OrdersScreenView),
    RouteDef(Routes.stockLayoutScreenView, page: StockLayoutScreenView),
    RouteDef(Routes.notificationScreenView, page: NotificationScreenView),
    RouteDef(Routes.buyScreenView, page: BuyScreenView),
    RouteDef(Routes.employeesScreenView, page: EmployeesScreenView),
    RouteDef(Routes.accountsScreenView, page: AccountsScreenView),
    RouteDef(Routes.myProfileScreenView, page: MyProfileScreenView),
    RouteDef(Routes.analyticsScreenView, page: AnalyticsScreenView),
    RouteDef(Routes.onShopBillScreenView, page: OnShopBillScreenView),
    RouteDef(Routes.productDescriptionScreenView,
        page: ProductDescriptionScreenView),
    RouteDef(Routes.biolegeCardScreenView, page: BiolegeCardScreenView),
    RouteDef(Routes.orderPageScreenView, page: OrderPageScreenView),
    RouteDef(Routes.customerDetailsScreenView, page: CustomerDetailsScreenView),
    RouteDef(Routes.paymentModeView, page: PaymentModeView),
    RouteDef(Routes.confirmationScreenView, page: ConfirmationScreenView),
    RouteDef(Routes.confirmationDetailsScreenView,
        page: ConfirmationDetailsScreenView),
    RouteDef(Routes.orderConfirmationView, page: OrderConfirmationView),
    RouteDef(Routes.checkItemsScreenView, page: CheckItemsScreenView),
    RouteDef(Routes.onlineOrderDetailsScreenView,
        page: OnlineOrderDetailsScreenView),
    RouteDef(Routes.importMedicine, page: ImportMedicine),
    RouteDef(Routes.myImportsScreenView, page: MyImportsScreenView),
    RouteDef(Routes.medicineDetails, page: MedicineDetails),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePageScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePageScreenView(),
        settings: data,
      );
    },
    OrdersScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrdersScreenView(),
        settings: data,
      );
    },
    StockLayoutScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StockLayoutScreenView(),
        settings: data,
      );
    },
    NotificationScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotificationScreenView(),
        settings: data,
      );
    },
    BuyScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BuyScreenView(),
        settings: data,
      );
    },
    EmployeesScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmployeesScreenView(),
        settings: data,
      );
    },
    AccountsScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AccountsScreenView(),
        settings: data,
      );
    },
    MyProfileScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyProfileScreenView(),
        settings: data,
      );
    },
    AnalyticsScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AnalyticsScreenView(),
        settings: data,
      );
    },
    OnShopBillScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnShopBillScreenView(),
        settings: data,
      );
    },
    ProductDescriptionScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductDescriptionScreenView(),
        settings: data,
      );
    },
    BiolegeCardScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BiolegeCardScreenView(),
        settings: data,
      );
    },
    OrderPageScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrderPageScreenView(),
        settings: data,
      );
    },
    CustomerDetailsScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CustomerDetailsScreenView(),
        settings: data,
      );
    },
    PaymentModeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PaymentModeView(),
        settings: data,
      );
    },
    ConfirmationScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ConfirmationScreenView(),
        settings: data,
      );
    },
    ConfirmationDetailsScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ConfirmationDetailsScreenView(),
        settings: data,
      );
    },
    OrderConfirmationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrderConfirmationView(),
        settings: data,
      );
    },
    CheckItemsScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CheckItemsScreenView(),
        settings: data,
      );
    },
    OnlineOrderDetailsScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnlineOrderDetailsScreenView(),
        settings: data,
      );
    },
    ImportMedicine: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ImportMedicine(),
        settings: data,
      );
    },
    MyImportsScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyImportsScreenView(),
        settings: data,
      );
    },
    MedicineDetails: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MedicineDetails(),
        settings: data,
      );
    },
  };
}
