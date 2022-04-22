import 'package:flutter/material.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/loan/amt/root.dart';

class LoanReason extends StatelessWidget {
  const LoanReason({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Loan Reason',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 20,
          bottom: 30,
        ),
        child: TextFormField(
          maxLines: 100,
          style: Theme.of(context).textTheme.headline4,
          decoration: InputDecoration.collapsed(
            hintText: 'Write down reason for loan application ...',
            hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.grey,
                ),
          ),
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
          goTo(context, LoanAmt());
        },
      ),
    );
  }
}
