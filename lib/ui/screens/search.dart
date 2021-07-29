import 'package:flutter/material.dart';
import '../../components/empty.dart';
import 'starter.dart';
import '../theme/color.dart';

class SearchBar extends StatelessWidget {
  static const routeName = '/search';

  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkWorld,
      appBar: AppBar(
        toolbarHeight: 60,
        title: PreferredSize(
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColor.whiteColor,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Starter.routeName);
                },
                //onPressed: () => Navigator.of(context).pop(),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                ),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.66,
                child: TextFormField(
                  cursorColor: AppColor.whiteColor,
                  decoration: const InputDecoration(
                    hintText: 'Search Contracts',
                    fillColor: AppColor.whiteColor,
                    focusedBorder: null,
                    focusColor: AppColor.whiteColor,
                    border: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null && value.contains('1'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.close,
                  color: AppColor.whiteColor,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Starter.routeName);
                },
                //onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          preferredSize: const Size.fromHeight(kToolbarHeight),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(),
          const Expanded(
            child: Empty(
                title: 'No saved contracts',
                location: 'assets/icons/noitem.svg'),
          ),
        ],
      ),
    );
  }
}
