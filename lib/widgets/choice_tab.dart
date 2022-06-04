import 'package:flutter/material.dart';

class ChoiceTab extends StatelessWidget {
  const ChoiceTab({Key? key,
  required TabController controller}) : _controller = controller, super(key: key);
 final TabController _controller;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _controller,
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.white,
        tabs: const[
          Tab(text: 'Popular Hymns'),
          Tab(text: 'All Hymns'),
          Tab(text: 'My Favorites'),
        ],
      );
  }
}
