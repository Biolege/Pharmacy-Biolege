// This files contains all the routes of the app
// Simply add a Material Route Constructor with Classname and Routename
// and run the below command
// flutter pub run build_runner build --delete-conflicting-outputs
// _____________________________________________________________________________
import 'package:auto_route/auto_route_annotations.dart';
import 'package:pharmacyapp/screens/orderScreenView/createBillScreenView/biolegeCardScreenView/biolegeCardScreenView.dart';
import 'package:pharmacyapp/screens/orderScreenView/createBillScreenView/confirmationScreenView/confirmationScreenView.dart';
import 'package:pharmacyapp/screens/orderScreenView/createBillScreenView/customerDetailsScreenView/customerDetailsScreenView.dart';
import 'package:pharmacyapp/screens/orderScreenView/createBillScreenView/paymentModeView/paymentModeView.dart';
import 'package:pharmacyapp/screens/orderScreenView/createOnlineOrderScreenView/orderConfirmationView/orderConfirmationView.dart';
import 'package:pharmacyapp/screens/orderScreenView/onlineOrderScreenView/checkItemsScreenView/checkItemsScreenView.dart';
import 'package:pharmacyapp/screens/orderScreenView/onlineOrderScreenView/onlineOrderDetailsScreenView/onlineOrderDetailsScreenView.dart';
import 'package:pharmacyapp/screens/orderScreenView/onlineOrderScreenView/orderConfirmationDetailScreenView/orderConfirmationDetailScreenView.dart';
import 'package:pharmacyapp/widgets/stockScreenView/importScreen/importMedicineScreenView/importMedicineScreenViewComponent.dart';
import 'package:pharmacyapp/widgets/stockScreenView/importScreen/medicineDetailsScreenView/medicineDetailsScreenView.dart';
import 'package:pharmacyapp/widgets/stockScreenView/importScreen/myimportsScreenView/myImportsScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/orderPageScreenView/orderPageScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/onShopBillScreenView/onShopBillScreenView.dart';
import '../screens/buyScreenView/shopScreen/productDescriptionScreenView/productDescriptionScreenView.dart';
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
//         yield C();
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
  MaterialRoute(
    path: OnShopBillScreenView.routeName,
    page: OnShopBillScreenView,
  ),
  MaterialRoute(
    path: ProductDescriptionScreenView.routeName,
    page: ProductDescriptionScreenView,
  ),
  MaterialRoute(
    path: BiolegeCardScreenView.routeName,
    page: BiolegeCardScreenView,
  ),
  MaterialRoute(
    path: OrderPageScreenView.routeName,
    page: OrderPageScreenView,
  ),
  MaterialRoute(
    path: CustomerDetailsScreenView.routeName,
    page: CustomerDetailsScreenView,
  ),
  MaterialRoute(
    path: PaymentModeView.routeName,
    page: PaymentModeView,
  ),
  MaterialRoute(
    path: ConfirmationScreenView.routeName,
    page: ConfirmationScreenView,
  ),
  MaterialRoute(
    path: ConfirmationDetailsScreenView.routeName,
    page: ConfirmationDetailsScreenView,
  ),
  MaterialRoute(
    path: OrderConfirmationView.routeName,
    page: OrderConfirmationView,
  ),
  MaterialRoute(
    path: CheckItemsScreenView.routeName,
    page: CheckItemsScreenView,
  ),
  MaterialRoute(
    path: OnlineOrderDetailsScreenView.routeName,
    page: OnlineOrderDetailsScreenView,
  ),
  MaterialRoute(
    path: ImportMedicine.routeName,
    page: ImportMedicine,
  ),
  MaterialRoute(
    path: MyImportsScreenView.routeName,
    page: MyImportsScreenView,
  ),
  MaterialRoute(
    path: MedicineDetails.routeName,
    page: MedicineDetails,
  ),
])
class $Router {}
