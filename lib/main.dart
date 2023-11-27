import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/app_constants.dart';
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    //screenUtil package to make design responsive
    return ScreenUtilInit(
      designSize:
          const Size(AppConstants.screenWidget, AppConstants.screenHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            //Text is generally big on IOS ro that why we set text scale factor for IOS to 0.9
            return MediaQuery(
              data: data.copyWith(
                  textScaleFactor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? 0.9
                          : 1),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'idaawee',
          theme: lightThemeData(context),
          themeMode: ThemeMode.light,
          onGenerateRoute: AppRoutes.onGenerateRoute,
          initialRoute: AppRoutes.userMainMenuScreen,
        );
      },
    );
  }
}
