import 'package:flutter/material.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/loan/details/root.dart';

class LoanRef extends StatefulWidget {
  const LoanRef({Key? key}) : super(key: key);

  @override
  State<LoanRef> createState() => _LoanRefState();
}

class _LoanRefState extends State<LoanRef> {
  PhoneContact? ref1;
  String ref1Type = 'personal';

  PhoneContact? ref2;
  String ref2Type = 'personal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Reference',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Referee 1',
              style: Theme.of(context).textTheme.headline3,
            ),
            ref1 != null
                ? Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            getInitials(ref1?.fullName),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          '${ref1?.fullName}',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          '${ref1?.phoneNumber?.number}',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        DropdownButton<String>(
                          value: ref1Type,
                          style: Theme.of(context).textTheme.headline5,
                          onChanged: (String? newValue) {
                            setState(() {
                              ref1Type = newValue!;
                            });
                          },
                          items: <String>[
                            'personal',
                            'Family',
                            'Relative',
                            'Friend'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.shade200,
                    ),
                    child: IconButton(
                      onPressed: () async {
                        var ref = await FlutterContactPicker.pickPhoneContact();
                        setState(() {
                          ref1 = ref;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
            const SizedBox(height: 46),
            Text(
              'Referee 1',
              style: Theme.of(context).textTheme.headline3,
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink.shade200,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.pink,
        label: const Icon(Icons.arrow_forward_ios_rounded),
        icon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Next'),
        ),
        onPressed: () {
          goTo(context, LoanYourDetails());
        },
      ),
    );
  }

  String getInitials(String? name) {
    var namelist = name?.split(' ');
    var first = namelist?[0].split('')[0];
    try {
      var second = namelist?[1].split('')[0];
      return '$first$second'.toUpperCase();
    } catch (e) {
      return first?.split('')[0].toUpperCase() ?? '00';
    }
  }
}
