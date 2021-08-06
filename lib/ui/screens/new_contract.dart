import 'package:flutter/material.dart';
import 'package:ibilling/widgets/dropdown_entity.dart';
import '../../widgets/widgets.dart';
import '../ui.dart';
import '../../widgets/appbar2.dart';
import '../theme/color.dart';

class NewContract extends StatelessWidget {
  const NewContract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar: PreferredSize(
        child: TopBar2(
          title: Constants.titles[2],
        ),
        preferredSize: const Size.fromHeight(kToolbarHeight),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(),
            const DropDownEntity(
              label: 'Entity'
            ),
            const TextBlank(label: 'Full Name'),
            const TextBlank(label: 'Address of the organization'),
            const TextBlank(label: 'INN', location: 'assets/icons/question.svg'),
            const DropDownStatus(label: 'Status of the contract'),
          ],
        ),
      ),
    );
  }
}
