import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grhyper_mart/dashboard.dart';
import 'package:grhyper_mart/product_list.dart';
import 'package:grhyper_mart/responsive.dart';
import 'package:grhyper_mart/studentListPage.dart';

import 'constants.dart';
import 'drawer_list_tile.dart';
import 'file_info_card.dart';
import 'models/MyFiles.dart';
import 'myfiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GR HyperMart Admin Panel',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: secondaryColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white),
            canvasColor: secondaryColor,
        ),
        home: MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPageIndex = 0;

  void _changePage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Image.asset("assets/images/trolley.png"),
                ),
                DrawerListTile(
                  title: "Dashboard",
                  svgSrc: "assets/icons/menu_dashboard.svg",
                  press: ()  => _changePage(0),
                ),
                DrawerListTile(
                  title: "Orders",
                  svgSrc: "assets/icons/menu_store.svg",
                  press: () {},
                ),
                DrawerListTile(
                  title: "Stock Management",
                  svgSrc: "assets/icons/menu_doc.svg",
                  press: ()  => _changePage(3),
                ),
                DrawerListTile(
                  title: "Notification",
                  svgSrc: "assets/icons/menu_notification.svg",
                  press: () {},
                ),
                DrawerListTile(
                  title: "Drivers",
                  svgSrc: "assets/icons/menu_profile.svg",
                  press: () {},
                ),
                DrawerListTile(
                  title: "Payment Gateway",
                  svgSrc: "assets/icons/menu_tran.svg",
                  press: () {},
                ),
                DrawerListTile(
                  title: "Statistics",
                  svgSrc: "assets/icons/menu_task.svg",
                  press: ()  => _changePage(1),
                ),
                DrawerListTile(
                  title: "Settings",
                  svgSrc: "assets/icons/menu_setting.svg",
                  press: ()  => _changePage(0),
                ),
              ],
            ),

            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            //   children: [
            //     MaterialButton(
            //       onPressed: () => _changePage(0),
            //
            //     ),
            //  ],
            //
            // ),
          ),
          // Content
          Expanded(
            child: IndexedStack(
              index: _selectedPageIndex,
              children: [
                // Page 1
                // Page 2 (Student List Page)
                Dashboard(),
                StudentListPage(),
                Dashboard(),
                ProductList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}


