import 'package:bloc/bloc.dart';
import '../screens/accountsScreenView/accountsScreenView.dart';
import '../screens/analyticsScreenView/analyticsScreenView.dart';
import '../screens/buyScreen/buyScreenView/buyScreenView.dart';
import '../screens/employeesScreenView/employeesScreenView.dart';
import '../screens/homePageScreenView/homePageScreenView.dart';
import '../screens/myProfileScreenView/myProfileScreenView.dart';
import '../screens/notificationScreenView/notificationScreenView.dart';
import '../screens/orderScreen/ordersScreenView/ordersScreenView.dart';
import '../screens/stockScreen/stockLayoutScreenView/stockLayoutScreenView.dart';

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
  NavigationBloc(NavigationStates x) : super(x);

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
