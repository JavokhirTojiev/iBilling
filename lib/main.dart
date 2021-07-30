import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/ibilling_service_bloc.dart';
import 'ui/screens/search.dart';
import 'ui/screens/saved.dart';
import 'ui/screens/starter.dart';
import 'ui/screens/history.dart';
import 'ui/screens/profile.dart';
import 'ui/screens/filter.dart';

import 'ui/screens/contracts.dart';

void main() {
  runApp(const MyApp());
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
          create: (_) => IbillingServiceBloc()
            ..add(
              Load(),
            ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'iBilling',
        theme: ThemeData.dark(),
        routes: {
          '/': (context) => const Starter(),
          Starter.routeName: (context) => const Starter(),
          Contracts.routeName: (context) => const Contracts(),
          Filter.routeName: (context) => const Filter(),
          History.routeName: (context) => const History(),
          Saved.routeName: (context) => const Saved(),
          Profile.routeName: (context) => const Profile(),
          SearchBar.routeName: (context) => const SearchBar(),
        },
      ),
    );
  }
}
