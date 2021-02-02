import 'package:bloc/bloc.dart';
import '../screens/accountsScreenView.dart';
import '../screens/analyticsScreenView.dart';
import '../screens/buyScreen/buyScreenView.dart';
import '../screens/employeesScreenView.dart';
import '../screens/homePageScreenView.dart';
import '../screens/myProfileScreenView.dart';
import '../screens/notificationScreenView.dart';
import '../screens/orderScreen/ordersScreenView.dart';
import '../screens/stockScreen/stockLayoutScreenView.dart';

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
  NavigationBloc() : super(null);

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
