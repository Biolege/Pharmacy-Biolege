import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stacked/stacked.dart';
import '../menuItem.dart';
import 'sidebarScreenViewModel.dart';

class SideBarView extends StatefulWidget {
  static const String routeName = "/SideBarView";
  @override
  _SideBarViewState createState() => _SideBarViewState();
}

class _SideBarViewState extends State<SideBarView>
    with SingleTickerProviderStateMixin<SideBarView> {
  AnimationController _animationController;
  StreamController<bool> isSidebarOpenedStreamController;
  Stream<bool> isSidebarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;
  final Duration _animationDuration = const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ViewModelBuilder<SidebarScreenViewModel>.reactive(
      viewModelBuilder: () => SidebarScreenViewModel(),
      builder: (context, model, child) {
        return StreamBuilder<bool>(
          initialData: false,
          stream: isSidebarOpenedStream,
          builder: (context, isSideBarOpenedAsync) {
            return AnimatedPositioned(
              duration: _animationDuration,
              curve: Curves.ease,
              top: 0,
              bottom: 0,
              left: isSideBarOpenedAsync.data ? 0 : -screenWidth,
              right: isSideBarOpenedAsync.data ? 0 : screenWidth - 45,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      color: const Color(0xFF141B41),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          Row(
                            children: [
                              Text(
                                'Dona Medicos',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          MenuItem(
                            icon: Icons.home,
                            title: "Home",
                            onTap: () => model.pushHomePageScreenView(),
                          ),
                          MenuItem(
                            icon: Icons.account_circle,
                            title: "Order",
                            onTap: () => model.pushOrdersScreenView(),
                          ),
                          MenuItem(
                            icon: Icons.settings_input_component,
                            title: "Stock",
                            onTap: () => model.pushStockLayoutScreenView(),
                          ),
                          MenuItem(
                            icon: Icons.shopping_cart,
                            title: "Buy",
                            onTap: () => model.pushBuyScreenView(),
                          ),
                          MenuItem(
                            icon: Icons.notifications,
                            title: "Notification",
                            onTap: () => model.pushNotificationScreenView(),
                          ),
                          MenuItem(
                            icon: Icons.details,
                            title: "Analytics",
                            onTap: () => model.pushAnalyticsScreenView(),
                          ),
                          MenuItem(
                            icon: Icons.people,
                            title: "Employess",
                            onTap: () => model.pushEmployeesScreenView(),
                          ),
                          MenuItem(
                            icon: Icons.monetization_on,
                            title: "Accounts",
                            onTap: () => model.pushAccountsScreenView(),
                          ),
                          MenuItem(
                            icon: Icons.person,
                            title: "My Profile",
                            onTap: () => model.pushMyProfileScreenView(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    child: GestureDetector(
                      onTap: () {
                        onIconPressed();
                      },
                      child: ClipPath(
                        clipper: CustomMenuClipper(),
                        child: Container(
                          width: 35,
                          height: 110,
                          color: Color(0xFF141B41),
                          alignment: Alignment.centerLeft,
                          child: AnimatedIcon(
                            progress: _animationController.view,
                            icon: AnimatedIcons.arrow_menu,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
