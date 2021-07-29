import 'package:flutter/material.dart';
import '../ui/theme/font.dart';

enum SingingCharacter { uzb, rus, usa }

class RadioOption extends StatefulWidget {
  const RadioOption({
    Key? key,
  }) : super(key: key);

  @override
  _RadioOptionState createState() => _RadioOptionState();
}

class _RadioOptionState extends State<RadioOption> {
  SingingCharacter? _character = SingingCharacter.uzb;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: () {
            setState(() {
              _character = SingingCharacter.uzb;
            });
          },
          leading: Container(
            width: 25.0,
            height: 25.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/flags/uzb.png'),
              ),
            ),
          ),
          title: Text(
            'O\'zbek (Lotin)',
            style: AppTextTheme.darkTextTheme.bodyText1,
          ),
          trailing: SizedBox(
            width: 30,
            child: RadioListTile<SingingCharacter>(
              value: SingingCharacter.uzb,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              _character = SingingCharacter.rus;
            });
          },
          leading: Container(
            width: 25.0,
            height: 25.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/flags/rus.png'),
              ),
            ),
          ),
          title: Text(
            'Русский',
            style: AppTextTheme.darkTextTheme.bodyText1,
          ),
          trailing: SizedBox(
            width: 30,
            child: RadioListTile<SingingCharacter>(
              value: SingingCharacter.rus,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              _character = SingingCharacter.usa;
            });
          },
          leading: Container(
            width: 25.0,
            height: 25.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/flags/usa.png'),
              ),
            ),
          ),
          title: Text(
            'English (USA)',
            style: AppTextTheme.darkTextTheme.bodyText1,
          ),
          trailing: SizedBox(
            width: 30,
            child: RadioListTile<SingingCharacter>(
              value: SingingCharacter.usa,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
