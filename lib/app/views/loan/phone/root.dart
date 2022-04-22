import 'package:flutter/material.dart';
import 'package:ikreditt/app/components/numberpad/sk_numberpad.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/loan/contact/root.dart';

class LoanTakePhone extends StatefulWidget {
  const LoanTakePhone({Key? key}) : super(key: key);

  @override
  State<LoanTakePhone> createState() => _LoanTakePhoneState();
}

class _LoanTakePhoneState extends State<LoanTakePhone> {
  final TextEditingController phoneNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phone Number',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: size.height * .4,
              child: Align(
                alignment: Alignment.topCenter,
                child: Center(
                  // color: Colors.amber,
                  child: phoneNumController.text.isEmpty
                      ? RichText(
                          maxLines: 1,
                          text: TextSpan(
                            text: 'eg ',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: Colors.grey),
                            children: [
                              TextSpan(
                                text: '0712345678',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1
                                    ?.copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      : Text(
                          phoneNumController.text,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                ),
              ),
            ),
            SkNumberPad(
              selectedNo: (value) {
                if (value.length < 15) {
                  setState(() => phoneNumController.text = value);
                }
              },
              doneSelected: (value) {
                if (phoneNumController.text.length > 5 &&
                    phoneNumController.text.length < 15) {
                  goTo(context, LoanTakeContact());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
