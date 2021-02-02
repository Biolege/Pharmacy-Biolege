import 'package:bloc/bloc.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/buylayout.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/orders.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/stocklayout.dart';
import 'package:pharmacy_bioledge/pages/accounts.dart';
import 'package:pharmacy_bioledge/pages/analytics.dart';
import 'package:pharmacy_bioledge/pages/employees.dart';
import 'package:pharmacy_bioledge/pages/myprofile.dart';
import 'package:pharmacy_bioledge/pages/notification.dart';

import '../pages/homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  OrdersClickedEvent,
  StockClickedEvent,
  BuyClickedEvent,
  NotificationClickedEvent,
  AnalysisClickedEvent,
  EmployeeClickedEvent,
  AccountsClickedEvent,
  MyProfileClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;

      case NavigationEvents.OrdersClickedEvent:
        yield Orders();
        break;

      case NavigationEvents.StockClickedEvent:
        yield StockL();
        break;

      case NavigationEvents.NotificationClickedEvent:
        yield Notification();
        break;

      case NavigationEvents.AnalysisClickedEvent:
        yield Analytics();
        break;

      case NavigationEvents.BuyClickedEvent:
        yield BuyL();
        break;

      case NavigationEvents.EmployeeClickedEvent:
        yield Employees();
        break;

      case NavigationEvents.AccountsClickedEvent:
        yield Accounts();
        break;

      case NavigationEvents.MyProfileClickedEvent:
        yield MyProfile();
        break;
    }
  }
}
