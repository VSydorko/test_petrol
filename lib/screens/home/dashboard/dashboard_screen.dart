import 'package:flutter/material.dart';

import 'package:test_petrol/core/index.dart';
import 'package:test_petrol/localization/index.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.dashboard.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => RootScaffold.openEndDrawer(context),
          ),
        ],
      ),
      body: Center(
        child: Text(
          LocaleKeys.dashboardScreenTitle.tr(),
        ),
      ),
    );
  }
}
