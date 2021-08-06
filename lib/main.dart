import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'ui/screens/starter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [
          const Locale('uz', 'UZB'),
          const Locale('en', 'US'),
          const Locale('ru', 'RUS'),
        ],
        path: 'assets/translation',
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ContractBlocPart()
            ..add(
              LoadContract(),
            ),
        ),
        BlocProvider(
          create: (_) => HistoryBlocPart()
            ..add(
              InitializeHistoryEvent(),
            ),
        ),
        BlocProvider(
          create: (_) => LocalBlocPart()
            ..add(
              LocalEvent(),
            ),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'iBilling',
        theme: ThemeData.dark(),
        home: const Starter(),
      ),
    );
  }
}
