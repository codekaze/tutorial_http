import 'package:demo_app/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MainNavigationView extends StatefulWidget {
  @override
  _MainNavigationViewState createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView>
    with SingleTickerProviderStateMixin {
  final controller = Get.put(MainNavigationController());
  TabController tabController;
  int _index;

  getPage() {
    switch (_index) {
      case 0:
        return HomeView();
        break;
      case 1:
        return Container();
        break;
      case 2:
        return Container();
        break;
      case 3:
        return AccountView();
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      builder: (_) {
        return Scaffold(
          body: getPage(),
          bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: true,
              currentIndex: _index,
              type: BottomNavigationBarType.fixed,
              onTap: (int _index) {
                setState(() {
                  this._index = _index;
                });
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.list),
                  label: "Order",
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.shoppingCart),
                  label: "Cart",
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user),
                  label: "Account",
                ),
              ]),
        );
      },
    );
  }
}
