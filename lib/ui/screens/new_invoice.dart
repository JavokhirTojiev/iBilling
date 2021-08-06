import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../ui.dart';

class NewInvoice extends StatelessWidget {
  const NewInvoice({Key? key}) : super(key: key);

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
            const TextBlank(label: 'Service name'),
            const TextBlank(label: 'Sum of Invoice'),
            const DropDownStatus(label: 'Status of the contract'),
          ],
        ),
      ),
    );
  }
}
