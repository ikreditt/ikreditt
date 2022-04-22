import 'package:animated_neumorphic/animated_neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/loan/reason/root.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoanYourDetails extends StatelessWidget {
  const LoanYourDetails({Key? key}) : super(key: key);

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
          'Details',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Work Status',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 12),
            ToggleSwitch(
              activeBgColor: const [Colors.pink, Colors.red],
              initialLabelIndex: 0,
              totalSwitches: 3,
              minWidth: double.infinity,
              labels: ['Employed', 'Self-Employed', 'Unemployed'],
            ),
            const Divider(height: 44),
            Text(
              'Income Interval',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 12),
            ToggleSwitch(
              initialLabelIndex: 0,
              totalSwitches: 3,
              activeBgColor: const [Colors.pink, Colors.red],
              minWidth: double.infinity,
              labels: ['Daily', 'Weekly', 'Monthly'],
            ),
            const Divider(height: 44),
            Text(
              'Next Pay Date',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 12),
            AnimatedNeumorphicContainer(
              depth: .1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: Theme.of(context).textTheme.headline6,
                  decoration: InputDecoration.collapsed(
                    hintText: '',
                    hintStyle: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
            const Divider(height: 44),
            Text(
              'Bread Winner',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 12),
            ToggleSwitch(
              initialLabelIndex: 0,
              totalSwitches: 2,
              activeBgColor: const [Colors.pink, Colors.red],
              minWidth: double.infinity,
              labels: ['No', 'Yes'],
            ),
            const Divider(height: 44),
            Text(
              'House Hold',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 12),
            ToggleSwitch(
              initialLabelIndex: 0,
              totalSwitches: 3,
              activeBgColor: const [Colors.pink, Colors.red],
              minWidth: double.infinity,
              labels: ['Rental', 'Family-House', 'Owned'],
            ),
            const Divider(height: 44),
            Text(
              'Existing Loan',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 12),
            ToggleSwitch(
              initialLabelIndex: 0,
              totalSwitches: 2,
              activeBgColor: const [Colors.pink, Colors.red],
              minWidth: double.infinity,
              labels: ['No', 'Yes'],
            ),
            const Divider(height: 44),
            Text(
              'Number of Existing Loans',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 12),
            AnimatedNeumorphicContainer(
              depth: .1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: Theme.of(context).textTheme.headline6,
                  decoration: InputDecoration.collapsed(
                    hintText: '',
                    hintStyle: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 280),
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
          goTo(context, LoanReason());
        },
      ),
    );
  }
}
