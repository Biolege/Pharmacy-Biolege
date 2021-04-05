// This files contains all the routes of the app
// Simply add a Material Route Constructor with Classname and Routename
// and run the below command
// flutter pub run build_runner build --delete-conflicting-outputs
// _____________________________________________________________________________
import 'package:auto_route/auto_route_annotations.dart';

import '../screens/addPharmacyEmployeeScreens/createSearchPharmacy/addPharmacyScreen/addPharmacyScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/createSearchPharmacy/addPharmacyAddressScreen/addPharmacyAddressScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/createSearchPharmacy/addPharmacyOwnerDetailsScreens/addPharmacyOwnerDetailsView.dart';
import '../screens/welcomeScreen/welcomeScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/addressScreen/addressScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/createSearchPharmacy/createOrSearchPharmacyScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/createSearchPharmacy/searchPharmacyScreen/searchPharmacyScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/emailScreen/emailScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/genderScreen/genderScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/nameScreen/nameScreenView.dart';
import '../screens/addPharmacyEmployeeScreens/roleSelectScreen/roleSelectScreenView.dart';
import '../screens/onBoardingScreen/onBoardingScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/biolegeCardScreenView/biolegeCardScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/confirmationScreenView/confirmationScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/customerDetailsScreenView/customerDetailsScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/paymentModeView/paymentModeView.dart';
import '../screens/orderScreenView/createOnlineOrderScreenView/orderConfirmationView/orderConfirmationView.dart';
import '../screens/orderScreenView/onlineOrderScreenView/checkItemsScreenView/checkItemsScreenView.dart';
import '../screens/orderScreenView/onlineOrderScreenView/onlineOrderDetailsScreenView/onlineOrderDetailsScreenView.dart';
import '../screens/orderScreenView/onlineOrderScreenView/orderConfirmationDetailScreenView/orderConfirmationDetailScreenView.dart';
import '../screens/rootView.dart';
import '../screens/signUpScreens/otpScreen/otpScreenView.dart';
import '../screens/signUpScreens/phoneNumberScreen/phoneScreenView.dart';
import '../screens/stockScreenView/importScreen/importMedicineScreenView/importMedicineScreenViewComponent.dart';
import '../screens/stockScreenView/importScreen/medicineDetailsScreenView/medicineDetailsScreenView.dart';
import '../screens/stockScreenView/importScreen/myimportsScreenView/myImportsScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/orderPageScreenView/orderPageScreenView.dart';
import '../screens/orderScreenView/createBillScreenView/onShopBillScreenView/onShopBillScreenView.dart';
import '../screens/buyScreenView/shopScreen/productDescriptionScreenView/productDescriptionScreenView.dart';
import '../screens/stockScreenView/stockLayoutScreenView/stockLayoutScreenView.dart';
import '../screens/accountsScreenView/accountsScreenView.dart';
import '../screens/analyticsScreenView/analyticsScreenView.dart';
import '../screens/buyScreenView/buyScreenView/buyScreenView.dart';
import '../screens/employeesScreenView/employeesScreenView.dart';
import '../screens/homePageScreenView/homePageScreenView.dart';
import '../screens/myProfileScreenView/myProfileScreenView.dart';
import '../screens/notificationScreenView/notificationScreenView.dart';
import '../screens/orderScreenView/ordersScreenView/ordersScreenView.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  // ___________________________________________________________________________
  MaterialRoute(
    path: Root.routeName,
    page: Root,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: OnBoardingScreen.routeName,
    page: OnBoardingScreen,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: PhoneScreenView.routeName,
    page: PhoneScreenView,
  ),
  MaterialRoute(
    path: OTPScreenView.routeName,
    page: OTPScreenView,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: NameScreenView.routeName,
    page: NameScreenView,
  ),
  MaterialRoute(
    path: GenderScreenView.routeName,
    page: GenderScreenView,
  ),
  MaterialRoute(
    path: EmailScreenView.routeName,
    page: EmailScreenView,
  ),
  MaterialRoute(
    path: AddressScreenView.routeName,
    page: AddressScreenView,
  ),
  MaterialRoute(
    path: RoleSelectScreenView.routeName,
    page: RoleSelectScreenView,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: CreateOrSearchPharmacyScreenView.routeName,
    page: CreateOrSearchPharmacyScreenView,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: SearchPharmacyScreenView.routeName,
    page: SearchPharmacyScreenView,
  ),
  // ___________________________________________________________________________
  // =-o=-o
  MaterialRoute(
    path: AddPharmacyScreenView.routeName,
    page: AddPharmacyScreenView,
  ),
  // =-o=-o
  // ___________________________________________________________________________
  MaterialRoute(
    path: AddPharmacyOwnerDetailsScreenView.routeName,
    page: AddPharmacyOwnerDetailsScreenView,
  ),

  // ___________________________________________________________________________
  MaterialRoute(
    path: AddPharmacyAddressScreenView.routeName,
    page: AddPharmacyAddressScreenView,
  ),
  // ___________________________________________________________________________
  MaterialRoute(
    path: WelcomeScreenView.routeName,
    page: WelcomeScreenView,
  ),
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
