import 'package:flutter/material.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:animated_neumorphic/animated_neumorphic.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/loan/photo/root.dart';

class LoanTakeContact extends StatelessWidget {
  const LoanTakeContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Information',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, right: 16, top: 28),
        child: Form(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'First Name',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AnimatedNeumorphicContainer(
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
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  Text(
                    'Last Name',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AnimatedNeumorphicContainer(
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
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const Divider(),
              const SizedBox(height: 28),
              Row(
                children: [
                  Text(
                    'Alternate Number',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AnimatedNeumorphicContainer(
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
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const Divider(),
              const SizedBox(height: 28),
              Row(
                children: [
                  Text(
                    'ID Number',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AnimatedNeumorphicContainer(
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
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const Divider(),
              const SizedBox(height: 28),
              Text(
                'I am',
                style: Theme.of(context).textTheme.headline5,
              ),
              GenderPickerWithImage(
                onChanged: (gender) {},
              ),
            ],
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
          goTo(context, LoanIdPhoto());
        },
      ),
    );
  }
}
