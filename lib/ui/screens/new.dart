import 'package:flutter/material.dart';
import '../../components/components.dart';
import '../../widgets/appbar2.dart';
import '../ui.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar: PreferredSize(
        child: TopBar2(
          title: 'New Contract',
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
    );
  }
}
