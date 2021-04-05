import 'package:flutter/material.dart';
import '../../../../app/mediaQ.dart';
import '../../../../widgets/reusables.dart';
import '../../../../theme/theme.dart';
import 'package:stacked/stacked.dart';
import 'ordersSideBarScreenViewModel.dart';

class OrdersSideBarScreenView extends StatefulWidget {
  static const String routeName = "/OrdersSideBarScreenView";
  @override
  _OrdersSideBarScreenViewState createState() =>
      _OrdersSideBarScreenViewState();
}

class _OrdersSideBarScreenViewState extends State<OrdersSideBarScreenView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ViewModelBuilder<OrdersSideBarScreenViewModel>.reactive(
      viewModelBuilder: () => OrdersSideBarScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: buildAppBarWithLogoAndText(
              context,
              Text(
                "",
                style: TextStyle(color: white),
              )),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: sideBarBlueColor,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Card(
                      color: sideBarTileColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(20)),
                        child: Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              width: getProportionateScreenWidth(10),
                            ),
                            Text(
                              "Dona Medicos",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MenuTypeTile(
                            title: "Order",
                            function: () => {},
                            icon: Icons.monetization_on,
                            sideBarTileColor: sideBarTileColor,
                            screenWidth: screenWidth / 1.5),
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SideBarMenuLinks(
                              function: () => model.createBillings(),
                              text: "Create Billings",
                              icon: Icons.chevron_right_rounded,
                            ),
                            SideBarMenuLinks(
                              text: "Online Orders",
                            ),
                            SideBarMenuLinks(
                              function: () => model.orderProgress(),
                              text: "Order Progress",
                            ),
                            SideBarMenuLinks(
                              function: () => model.orderReportDetails(),
                              text: "Order Report",
                              icon: Icons.chevron_right_rounded,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: white,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuTile(
                          isSelected: true,
                          function: () => {},
                          icon: Icons.badge,
                          text: "Orders",
                          screenWidth: screenWidth,
                        ),
                        MenuTile(
                          isSelected: false,
                          function: () => {},
                          icon: Icons.storage_rounded,
                          text: "Stocks",
                          screenWidth: screenWidth,
                        ),
                        MenuTile(
                          isSelected: false,
                          function: () => {},
                          icon: Icons.shopping_cart,
                          text: "Buy Meds",
                          screenWidth: screenWidth,
                        ),
                        MenuTile(
                          isSelected: false,
                          function: () => {},
                          icon: Icons.shopping_cart,
                          text: "Buy Meds",
                          screenWidth: screenWidth,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuTile(
                          isSelected: false,
                          function: () => {},
                          icon: Icons.graphic_eq_outlined,
                          text: "Analytic",
                          screenWidth: screenWidth,
                        ),
                        MenuTile(
                          isSelected: false,
                          function: () => {},
                          icon: Icons.graphic_eq_outlined,
                          text: "Analytic",
                          screenWidth: screenWidth,
                        ),
                        MenuTile(
                          isSelected: false,
                          function: () => {},
                          icon: Icons.people,
                          text: "Members",
                          screenWidth: screenWidth,
                        ),
                        MenuTile(
                          isSelected: false,
                          function: () => {},
                          icon: Icons.account_circle,
                          text: "My Profile",
                          screenWidth: screenWidth,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SideBarMenuLinks extends StatelessWidget {
  const SideBarMenuLinks({
    Key key,
    this.text,
    this.icon,
    this.function,
  }) : super(key: key);

  final String text;
  final void Function() function;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: sideBarBlueColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(color: white, fontSize: 15),
            ),
            SizedBox(
              width: getProportionateScreenWidth(5),
            ),
            Icon(
              icon,
              color: white,
            )
          ],
        ),
      ),
    );
  }
}

class MenuTypeTile extends StatelessWidget {
  const MenuTypeTile(
      {Key key,
      @required this.sideBarTileColor,
      @required this.screenWidth,
      @required this.title,
      @required this.icon,
      @required this.function})
      : super(key: key);

  final String title;
  final Color sideBarTileColor;
  final double screenWidth;
  final IconData icon;
  final void Function() function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            color: sideBarTileColor, borderRadius: BorderRadius.circular(10)),
        width: screenWidth / 2.5,
        height: 100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(5),
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile(
      {Key key,
      @required this.screenWidth,
      @required this.icon,
      @required this.text,
      @required this.isSelected,
      @required this.function})
      : super(key: key);

  final double screenWidth;
  final String text;
  final IconData icon;
  final bool isSelected;
  final void Function() function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: screenWidth / 5,
        height: 80,
        decoration: BoxDecoration(
            color: !isSelected
                ? sideBarTileColor
                : sideBarTileColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
