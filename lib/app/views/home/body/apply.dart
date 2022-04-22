import 'package:flutter/material.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/loan/phone/root.dart';

class ApplyLoanBtn extends StatefulWidget {
  const ApplyLoanBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<ApplyLoanBtn> createState() => _ApplyLoanBtnState();
}

class _ApplyLoanBtnState extends State<ApplyLoanBtn> {
  double sliderValue = 0.5;
  onSlide(double val) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Colors.pink,
            Colors.red,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Apply for a loan',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 14,
                  color: Colors.white.withOpacity(.7),
                ),
          ),
          Text(
            'KES 21,000',
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: Colors.white,
                  fontSize: 50,
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Maximum loan limit',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontSize: 12,
                    color: Colors.white.withOpacity(.8),
                  ),
            ),
          ),
          const SizedBox(height: 4),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  goTo(context, LoanTakePhone());
                },
                child: const Text('Apply now'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  primary: Colors.green,
                  elevation: 8,
                  shadowColor: Colors.green,
                  onPrimary: Colors.white,
                  textStyle: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 14,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
