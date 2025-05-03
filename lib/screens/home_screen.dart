import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zirmi_flutter/screens/login_screen.dart';
import 'package:zirmi_flutter/widgets/left_sidebar.dart';
import 'package:zirmi_flutter/widgets/tabs/dashboard_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: LeftSidebar(),
        endDrawer: LeftSidebar(),
        appBar: AppBar(
          title: Text("Home"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(ctx).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              icon: Icon(Icons.logout),
            ),
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.menu),
                );
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            DashboardTab(),

            Text("Explore 1"),

            Text("Statistics 1"),

            Text("User 1"),
          ],
        ),
        bottomNavigationBar: TabBar(
          isScrollable: true,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          tabAlignment: TabAlignment.start,
          tabs: [
            Tab(text: "Dashboard"),
            Tab(text: "Explore"),
            Tab(text: "Statistics"),
            Tab(text: "User"),
          ],
        ),
      ),
    );
  }
}
