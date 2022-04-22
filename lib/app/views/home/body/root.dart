import 'package:flutter/material.dart';
import 'package:ikreditt/app/views/home/body/apply.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  List get genActivities {
    return List.generate(16, (index) => const ActivityBox());
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Text(
          'Hello',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          'Ian Wachira',
          style: Theme.of(context).textTheme.headline1,
        ),
        const ApplyLoanBtn(),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 6),
          child: Text(
            'Monday, June 12, 2020 : 12:00:00',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 6),
          child: Text(
            'Activity / History',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        ...genActivities,
      ],
    );
  }
}

class ActivityBox extends StatelessWidget {
  const ActivityBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 6, bottom: 1),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red.withOpacity(.2)),
                child: const Icon(
                  Icons.card_travel_sharp,
                  color: Colors.red,
                ),
              ),
              const SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Loan Payment Alert',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    'Loan Payment Alert',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.black.withOpacity(.8),
                          fontSize: 14,
                        ),
                  ),
                ],
              )
            ],
          ),
          const Divider(
            height: 36,
          )
        ],
      ),
    );
  }
}
