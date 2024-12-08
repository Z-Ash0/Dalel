import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/routes/router.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //* CacheHelper().init();
  await getIt<CacheHelper>().init(); //* the service locator
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
