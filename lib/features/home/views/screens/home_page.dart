
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:skidkilife/features/sales/views/screens/sales_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentPageIndex = 0;
  late PageController _pageController;
  static dynamic currentPageValue = 0.0;
  List pageViewItem = [
    const SalesPage(),
    Container(color: Colors.red,),
    Container(color: Colors.green,),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBody: true,
      body: PageView.builder(
        itemCount: pageViewItem.length,
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentPageIndex = index);
        },
        itemBuilder: (context, position) {
          return pageViewItem[position];
        }
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentPageIndex,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Theme.of(context).primaryColor),
          Icon(Icons.location_on_rounded, size: 30, color: Theme.of(context).primaryColor),
          Icon(Icons.bookmark, size: 30, color: Theme.of(context).primaryColor),
        ],
        onTap: (index) {
          setState(() => _currentPageIndex = index);
          _pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
        },
      ),
    );
  }
}
