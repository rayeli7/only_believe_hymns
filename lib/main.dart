import 'dart:math';
import 'package:flutter/material.dart' hide Title;
import 'package:only_believe_hymns/v.dart';
import 'widgets/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Only Believe Hymn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: const RootPage(),
    );
  }
}

const coverImage = "http://endtimemessage.info/hoffman.jpg";

const expandedHeight = 240.0;

class RootPage extends StatefulWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late final double _maxSizeBottomNavigationBar =
      MediaQuery.of(context).padding.bottom + kBottomNavigationBarHeight;

  late final double _percentageOpen = 0;
  int _currentIndex = 0;

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List _screens = [const Home(), const SearchPage(), const Foreward()];
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: SizedBox(
          height: max(0, (1 - _percentageOpen) * _maxSizeBottomNavigationBar),
          child: SingleChildScrollView(
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: _updateIndex,
                selectedItemColor: Colors.blue[700],
                unselectedItemColor: Colors.white,
                backgroundColor: Colors.grey[900],
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search_rounded),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.texture),
                    label: 'Foreward',
                  ),
                ]),
          ),
        ),
        body: _screens[_currentIndex]);
  }
}
