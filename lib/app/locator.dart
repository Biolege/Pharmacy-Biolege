import 'package:bloc/bloc.dart';
import 'package:pharmacy_bioledge/screens/accountsScreenView.dart';
import 'package:pharmacy_bioledge/screens/analyticsScreenView.dart';
import 'package:pharmacy_bioledge/screens/buyScreen/buyScreenView.dart';
import 'package:pharmacy_bioledge/screens/employeesScreenView.dart';
import 'package:pharmacy_bioledge/screens/homePageScreenView.dart';
import 'package:pharmacy_bioledge/screens/myProfileScreenView.dart';
import 'package:pharmacy_bioledge/screens/notificationScreenView.dart';
import 'package:pharmacy_bioledge/screens/orderScreen/ordersScreenView.dart';
import 'package:pharmacy_bioledge/screens/stockScreen/stockLayoutScreenView.dart';

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
  NavigationStates get initialState => HomePageScreenView();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePageScreenView();
        break;

      case NavigationEvents.OrdersClickedEvent:
        yield OrdersScreenView();
        break;

      case NavigationEvents.StockClickedEvent:
        yield StockLayoutScreenView();
        break;

      case NavigationEvents.NotificationClickedEvent:
        yield NotificationScreenView();
        break;

      case NavigationEvents.AnalysisClickedEvent:
        yield AnalyticsScreenView();
        break;

      case NavigationEvents.BuyClickedEvent:
        yield BuyScreenView();
        break;

      case NavigationEvents.EmployeeClickedEvent:
        yield EmployeesScreenView();
        break;

      case NavigationEvents.AccountsClickedEvent:
        yield AccountsScreenView();
        break;

      case NavigationEvents.MyProfileClickedEvent:
        yield MyProfileScreenView();
        break;
    }
  }
}
