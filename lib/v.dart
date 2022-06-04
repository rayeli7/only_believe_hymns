import 'dart:math';

import 'package:flutter/material.dart' hide Title;
import 'package:only_believe_hymns/main.dart';

import 'widgets/models.dart';
import 'widgets/song_tile.dart';
import 'widgets/title.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _controller = ScrollController();
  double _offset = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _controller.addListener(moveOffset);
  }

  moveOffset() {
    setState(() {
      _offset = min(max(0, _controller.offset / 6 - 16), 32);
    });
  }

  @override
  void dispose() {
    _controller.removeListener(moveOffset);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      physics: const BouncingScrollPhysics(),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(children: []),
          ),
          CustomScrollView(slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return HymnTile(index: index);
                },
                childCount: listHymns.length,
              ),
            ),
          ]),
          ValueListenableBuilder<List<HymnInfos>>(
            valueListenable: myFavourites,
            builder: (context, List<HymnInfos> values, Widget? child) {
              return CustomScrollView(slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      super.build(context);
                      return HymnTile(
                          index:
                              int.parse(values[index].hymnNumber.trim()) - 1);
                    },
                    childCount: values.length,
                  ),
                ),
              ]);
            },
          )
        ],
      ),
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.transparent,
            pinned: true,
            floating: false,
            elevation: 0,
            toolbarHeight: 0,
            collapsedHeight: 90,
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.height * .4,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Image.network(
                  coverImage,
                  fit: BoxFit.cover,
                ),
                expandedTitleScale: 1,
                titlePadding: const EdgeInsets.all(24),
                title: const Title(),
              ),
            ),
            titleSpacing: 0,
            primary: false,
          ),
          const SliverToBoxAdapter(),
          SliverAppBar(
            backgroundColor: Colors.black,
            toolbarHeight: _offset + kToolbarHeight,
            pinned: true,
            forceElevated: true,
            primary: false,
            automaticallyImplyLeading: false,
            expandedHeight: 50,
            collapsedHeight: null,
            titleSpacing: 0,
            title: Align(
              alignment: Alignment.topCenter,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.white,
                tabs: const [
                  Tab(text: 'Popular Hymns'),
                  Tab(text: 'All Hymns'),
                  Tab(text: 'My Favorites'),
                ],
              ),
            ),
          ),
        ];
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}


/*
class Home extends StatefulWidget {
  const Home({
    Key? key,
    required ScrollController controller,
    required double offset,
  })  : _controller = controller,
        _offset = offset,
        super(key: key);

  final ScrollController _controller;
  final double _offset;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: widget._controller,
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: expandedHeight,
          collapsedHeight: 90,
          stretch: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.transparent,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            child: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Image.network(
                coverImage,
                fit: BoxFit.cover,
              ),
              expandedTitleScale: 1,
              titlePadding: const EdgeInsets.all(24),
              title: const Title(),
            ),
          ),
        ),
        // Used to get the stretch effect to not be above the SliverAppBar
        const SliverToBoxAdapter(),
        SliverAppBar(
          backgroundColor: Colors.black,
          toolbarHeight: widget._offset + kToolbarHeight,
          title: Column(
            children: [
              SizedBox(height: widget._offset),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.white,
                tabs: const [
                  Tab(text: 'Popular Hymns'),
                  Tab(text: 'All Hymns'),
                  Tab(text: 'My Favorites'),
                ],
              ),
            ],
          ),
          primary: false,
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            //width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: TabBarView(controller: _tabController, children: [
              const CustomScrollView(
                slivers: <Widget>[],
              ),
              CustomScrollView(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: ScrollController(keepScrollOffset: true),
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return HymnTile(index: index);
                        },
                        childCount: listHymns.length,
                      ),
                    ),
                  ]),
              const CustomScrollView(
                slivers: <Widget>[],
              ),
            ]),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 120,
          ),
        ),
      ],
    );
  }
}*/
