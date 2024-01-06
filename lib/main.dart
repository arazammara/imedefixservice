import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/thems/theme.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      designSize: Size(size.width, size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(
                  // ignore: deprecated_member_use
                  textScaleFactor: 1),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'astrology',
          theme: lightThemeData(context),
          themeMode: ThemeMode.light,
          onGenerateRoute: AppRoutes.onGenerateRoute,
          initialRoute: AppRoutes.splashScreen,
        );
      },
    );
  }
}
