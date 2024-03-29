import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/app/widgets/expandable_tab_view_widget.dart';
import 'package:peniremit/features/home/app/widgets/scrollable_content_widget.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class ScrollableTabsWidget extends StatefulWidget {
  final Map<String, List> tabTitles;

  const ScrollableTabsWidget({
    super.key,
    required this.tabTitles,
  });

  @override
  ScrollableTabsWidgetState createState() => ScrollableTabsWidgetState();
}

class ScrollableTabsWidgetState extends State<ScrollableTabsWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    //initialize tab controller
    _tabController = TabController(
      length: widget.tabTitles.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: context.onSurfaceVt,
        ),
        borderRadius: BorderRadius.circular(
          Corners.md,
        ),
        color: context.colorScheme.surface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTabBar(),
          const Gap(10.0),
          _buildTabContent(),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: context.colorScheme.onPrimary,
      unselectedLabelColor: context.colorScheme.onSurface,
      labelStyle: TextStyles.body2,
      unselectedLabelStyle: TextStyles.body2,
      dividerColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      tabs: widget.tabTitles.keys.map((title) => Tab(text: title)).toList(),
    );
  }

  Widget _buildTabContent() {
    return ExpandableTabViewWidget(
      tabController: _tabController,
      children: List.generate(
        widget.tabTitles.length,
        (index) => ScrollableContentWidget(
          itemCount: (index + 1) * 4,
          items: const [],
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (mounted) _tabController.dispose();
    super.dispose();
  }
}
