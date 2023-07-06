import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grhyper_mart/myfiles.dart';
import 'package:grhyper_mart/recent_files.dart';
import 'package:grhyper_mart/storage_details.dart';
import 'constants.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),// ThemeData
      home: const MyDashboard(),
      debugShowCheckedModeBanner: false,
    );// MaterialApp
  }
}

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          SizedBox(width: defaultPadding),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height:defaultPadding),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Dashboard",style: TextStyle(
                      fontSize: 25.0
                    ),)),
                SizedBox(height: 10.0  ),
                Container(
                  child: MyFiles(),
                ),
                SizedBox(height:defaultPadding  ),
                const Expanded(
                  child: SingleChildScrollView(
                      child: RecentFiles()),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          const Expanded(
            flex: 2,

            child: Column(
                children:<Widget>[
                  SizedBox(height: defaultPadding),
                  StorageDetails()]
            ),
          ),
          SizedBox(width: defaultPadding),

        ],
      ),
    );
  }
}