import 'package:flutter/material.dart';
import '../../../widgets/reusables.dart';
import '../../../app/mediaQ.dart';
import '../../../theme/theme.dart';
import 'package:stacked/stacked.dart';
import 'sidebarScreenViewModel.dart';

class SideBarView extends StatefulWidget {
  static const String routeName = "/SideBarView";
  @override
  _SideBarViewState createState() => _SideBarViewState();
}

class _SideBarViewState extends State<SideBarView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return ViewModelBuilder<SidebarScreenViewModel>.reactive(
      viewModelBuilder: () => SidebarScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: buildAppBarWithLogoAndText(
              context,
              Text(
                "Welcome",
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: sideBarTileColor,
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
                      'Today',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuTypeTile(
                            title: "Total Customer",
                            function: () => {},
                            subtitle: "13",
                            icon: Icons.tag_faces_outlined,
                            sideBarTileColor: sideBarTileColor,
                            screenWidth: screenWidth),
                        MenuTypeTile(
                            title: "Total Revenue",
                            function: () => {},
                            subtitle: "13",
                            icon: Icons.monetization_on,
                            sideBarTileColor: sideBarTileColor,
                            screenWidth: screenWidth)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuTile(
                            function: () => model.pushOrdersScreenView(),
                            icon: Icons.badge,
                            text: "Orders",
                            screenWidth: screenWidth,
                            tileColor: sideBarTileColor),
                        MenuTile(
                            function: () => {},
                            icon: Icons.storage_rounded,
                            text: "Stocks",
                            screenWidth: screenWidth,
                            tileColor: sideBarTileColor),
                        MenuTile(
                            function: () => {},
                            icon: Icons.shopping_cart,
                            text: "Buy Meds",
                            screenWidth: screenWidth,
                            tileColor: sideBarTileColor),
                        MenuTile(
                            function: () => {},
                            icon: Icons.storage_rounded,
                            text: "Stocks",
                            screenWidth: screenWidth,
                            tileColor: sideBarTileColor),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuTile(
                            function: () => {},
                            icon: Icons.storage_rounded,
                            text: "Stocks",
                            screenWidth: screenWidth,
                            tileColor: sideBarTileColor),
                        MenuTile(
                            function: () => {},
                            icon: Icons.graphic_eq_outlined,
                            text: "Analytic",
                            screenWidth: screenWidth,
                            tileColor: sideBarTileColor),
                        MenuTile(
                            function: () => {},
                            icon: Icons.people,
                            text: "Members",
                            screenWidth: screenWidth,
                            tileColor: sideBarTileColor),
                        MenuTile(
                            function: () => {},
                            icon: Icons.account_circle,
                            text: "My Profile",
                            screenWidth: screenWidth,
                            tileColor: sideBarTileColor),
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

class MenuTypeTile extends StatelessWidget {
  const MenuTypeTile(
      {Key key,
      @required this.sideBarTileColor,
      @required this.screenWidth,
      @required this.title,
      @required this.subtitle,
      @required this.icon,
      @required this.function})
      : super(key: key);

  final String title, subtitle;
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white),
                )
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
      @required this.tileColor,
      @required this.icon,
      @required this.text,
      @required this.function})
      : super(key: key);

  final double screenWidth;
  final Color tileColor;
  final String text;
  final IconData icon;
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
            color: tileColor, borderRadius: BorderRadius.circular(10)),
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
