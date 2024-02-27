import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/pages/new_device_page.dart';
import '../components/custom_drawer.dart';
import 'announcement_page.dart';
import 'automation_page.dart';
import 'home_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;

  void _navigationBarChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [HomePage(), AutomationPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("SMART HOME",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AnnouncementPage()));
              },
              icon: const Icon(CupertinoIcons.bell_fill))
        ],
      ),
      drawer: CustomDrawer(),
      endDrawer: const Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NewDevicePage()));
        },
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.add,
            color: Theme.of(context).colorScheme.inversePrimary, size: 30),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
        selectedLabelStyle: TextStyle(fontSize: 13),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        onTap: _navigationBarChange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Automation"),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
