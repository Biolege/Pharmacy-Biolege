// This files contains all the routes of the app
// Simply add a Material Route Constructor with Classname and Routename
// and run the below command
// flutter pub run build_runner build --delete-conflicting-outputs
// _____________________________________________________________________________
import 'package:auto_route/auto_route_annotations.dart';
import '../widgets/stockScreenView/stockLayoutScreenView/stockLayoutScreenView.dart';
import '../screens/accountsScreenView/accountsScreenView.dart';
import '../screens/analyticsScreenView/analyticsScreenView.dart';
import '../screens/buyScreenView/buyScreenView/buyScreenView.dart';
import '../screens/employeesScreenView/employeesScreenView.dart';
import '../screens/homePageScreenView/homePageScreenView.dart';
import '../screens/myProfileScreenView/myProfileScreenView.dart';
import '../screens/notificationScreenView/notificationScreenView.dart';
import '../screens/orderScreenView/ordersScreenView/ordersScreenView.dart';

// enum NavigationEvents {
//   HomePageClickedEvent,
//   OrdersClickedEvent,
//   StockClickedEvent,
//   BuyClickedEvent,
//   NotificationClickedEvent,
//   AnalysisClickedEvent,
//   EmployeeClickedEvent,
//   AccountsClickedEvent,
//   MyProfileClickedEvent
// }

// abstract class NavigationStates {}

// class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
//   NavigationBloc(NavigationStates x) : super(x);

//   @override
//   Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
//     switch (event) {
//       case NavigationEvents.HomePageClickedEvent:
//         yield HomePageScreenView();
//         break;

//       case NavigationEvents.OrdersClickedEvent:
//         yield OrdersScreenView();
//         break;

//       case NavigationEvents.StockClickedEvent:
//         yield StockLayoutScreenView();
//         break;

//       case NavigationEvents.NotificationClickedEvent:
//         yield NotificationScreenView();
//         break;

//       case NavigationEvents.AnalysisClickedEvent:
//         yield AnalyticsScreenView();
//         break;

//       case NavigationEvents.BuyClickedEvent:
//         yield BuyScreenView();
//         break;

//       case NavigationEvents.EmployeeClickedEvent:
//         yield EmployeesScreenView();
//         break;

//       case NavigationEvents.AccountsClickedEvent:
//         yield AccountsScreenView();
//         break;

//       case NavigationEvents.MyProfileClickedEvent:
//         yield MyProfileScreenView();
//         break;
//     }
//   }
// }

@MaterialAutoRouter(routes: <AutoRoute>[
  // ___________________________________________________________________________
  MaterialRoute(
    path: HomePageScreenView.routeName,
    page: HomePageScreenView,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: OrdersScreenView.routeName,
    page: OrdersScreenView,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: StockLayoutScreenView.routeName,
    page: StockLayoutScreenView,
  ),
  MaterialRoute(
    path: NotificationScreenView.routeName,
    page: NotificationScreenView,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: BuyScreenView.routeName,
    page: BuyScreenView,
  ),
  MaterialRoute(
    path: EmployeesScreenView.routeName,
    page: EmployeesScreenView,
  ),
  MaterialRoute(
    path: AccountsScreenView.routeName,
    page: AccountsScreenView,
  ),
  MaterialRoute(
    path: MyProfileScreenView.routeName,
    page: MyProfileScreenView,
  ),
  MaterialRoute(
    path: AnalyticsScreenView.routeName,
    page: AnalyticsScreenView,
  ),
])
class $Router {}
