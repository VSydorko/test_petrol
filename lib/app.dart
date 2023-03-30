import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:test_petrol/app_state_wrapper.dart';
import 'package:test_petrol/router/index.dart';
import 'package:test_petrol/services/index.dart';
import 'package:test_petrol/styles/index.dart';

class TestPetrol extends StatelessWidget {
  TestPetrol({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AppStateWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Test Petrol',
        theme: AppTheme.getAppTheme(context),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [RouterObserver()],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
