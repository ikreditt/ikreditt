import 'package:flutter/material.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/home/root.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoanAmt extends StatelessWidget {
  const LoanAmt({Key? key}) : super(key: key);

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
          'Loan',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Loan Amount',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextFormField(
                keyboardType: TextInputType.number,
              ),
            ),
            const Divider(height: 54),
            Text(
              'Payment Duration',
              style: Theme.of(context).textTheme.headline4,
            ),
            SfDateRangePicker(
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                DateTime.now().subtract(const Duration(days: 4)),
                DateTime.now().add(const Duration(days: 3)),
              ),
            ),
            const Divider(height: 44),
            Text(
              'Repayment Plan',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 12),
            ToggleSwitch(
              initialLabelIndex: 0,
              totalSwitches: 2,
              activeBgColor: const [Colors.pink, Colors.red],
              minWidth: double.infinity,
              labels: ['Weekly', 'Monthly'],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.pink,
        label: const Icon(Icons.celebration_outlined),
        icon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('finish'),
        ),
        onPressed: () {
          goTo(context, HomePage());
        },
      ),
    );
  }
}
