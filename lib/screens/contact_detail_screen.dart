import 'package:flutter/material.dart';
import 'package:sea_test/models/contact.dart';
import 'package:sea_test/widgets/switch_custom.dart';
import 'package:sea_test/widgets/widgets.dart';

class ContactDetailScreen extends StatefulWidget {
  final Contact contact;

  const ContactDetailScreen({Key? key, required this.contact})
      : super(key: key);

  @override
  State<ContactDetailScreen> createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  final Color backgroundColor = const Color.fromRGBO(243, 245, 229, 1);
  bool isCustomer = false;
  bool isActive = false;
  bool isSupplier = false;
  bool isLockAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              HeaderCustom(
                nameScreen: 'Contact Infomation',
                isback: true,
              ),
              const SizedBox(
                height: 30,
              ),
              NameSession(
                  backgroundColor: backgroundColor, contact: widget.contact),
              const SizedBox(
                height: 15,
              ),
              PhoneAndEmailSession(backgroundColor: backgroundColor),
              const SizedBox(
                height: 15,
              ),
              AddressSession(
                backgroundColor: backgroundColor,
              ),
              const SizedBox(
                height: 15,
              ),
              TaxSession(
                backgroundColor: backgroundColor,
              ),
              const SizedBox(
                height: 15,
              ),
              SearchTagsSession(backgroundColor: backgroundColor),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchCustom(value: isCustomer, name: 'CUSTOMER'),
                      SwitchCustom(value: isSupplier, name: 'SUPPLIER'),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchCustom(value: isActive, name: 'ACTIVE'),
                      SwitchCustom(value: isLockAccount, name: 'LOCK ACCOUNT')
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
          tab1: TabItem(icon: 'assets/estimate.png', name: 'Estimates'),
          tab2: TabItem(icon: 'assets/projects.png', name: 'Projects'),
          tab3: TabItem(icon: 'assets/cash.png', name: 'Cash Sales'),
          tab4: TabItem(icon: 'assets/more.png', name: 'More'),
          fab: TabItem(
            icon: 'assets/scan.png',
          )),
    );
  }
}

class PhoneAndEmailSession extends StatelessWidget {
  const PhoneAndEmailSession({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: 'Phone Number:'),
            TextFieldCustom(hintText: 'Home Phone'),
            TextFieldCustom(hintText: 'Mobile Phone'),
            TextFieldCustom(hintText: 'Work Phone'),
            SizedBox(
              height: 10,
            ),
            TextHeader(text: 'Email Address:'),
            TextFieldCustom(hintText: 'Primary Email'),
            TextFieldCustom(hintText: 'Alternative Email'),
          ],
        ),
      ),
    );
  }
}

class SearchTagsSession extends StatelessWidget {
  const SearchTagsSession({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: 'Search Tags:'),
            TextFieldCustom(
              hintText: 'e.g Company Name, Trade Service, Product Name',
              maxlines: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class TaxSession extends StatelessWidget {
  const TaxSession({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: 'Tax Region:'),
            TextFieldCustom(hintText: 'Tax Region'),
            SizedBox(
              height: 10,
            ),
            TextHeader(text: 'Tax Refference:'),
            TextFieldCustom(hintText: 'Tax Refference Code'),
            SizedBox(
              height: 10,
            ),
            TextHeader(text: 'Invoice Terms:'),
            TextFieldCustom(hintText: 'Terms and Conditions'),
            SizedBox(
              height: 10,
            ),
            TextHeader(text: 'Invoice Note:'),
            TextFieldCustom(
              hintText: 'Notes to the Customer',
              maxlines: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class AddressSession extends StatelessWidget {
  const AddressSession({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: 'Address:'),
            TextFieldCustom(hintText: 'Address Line 1'),
            TextFieldCustom(hintText: 'Address Line 2'),
            TextFieldCustom(hintText: 'Street'),
            TextFieldCustom(hintText: 'Ward'),
            TextFieldCustom(hintText: 'City/ Region'),
            TextFieldCustom(hintText: 'Country'),
            TextFieldCustom(hintText: 'Postal Code'),
          ],
        ),
      ),
    );
  }
}

class NameSession extends StatelessWidget {
  const NameSession({
    Key? key,
    required this.backgroundColor,
    required this.contact,
  }) : super(key: key);

  final Color backgroundColor;
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 30,
          height: 108,
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(overflow: Overflow.visible, children: [
                  Text(
                    contact.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.black.withOpacity(0.7)),
                  ),
                  Positioned(
                      right: -20,
                      top: 4,
                      child: Image.asset(
                        'assets/edit.png',
                        width: 13,
                      ))
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Stack(overflow: Overflow.visible, children: [
                  Text(
                    'On Sport Company',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                  Positioned(
                      right: -20,
                      top: 3,
                      child: Image.asset(
                        'assets/edit.png',
                        width: 13,
                      ))
                ]),
              ),
            ],
          ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.width / 2 - 15 - 37,
            top: -37,
            width: 74,
            height: 74,
            child: CircleAvatar(
              backgroundImage: NetworkImage(contact.avatarImage),
            )),
        Positioned(
            left: MediaQuery.of(context).size.width / 2,
            top: 15,
            width: 20,
            height: 20,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              child: Image.asset('assets/edit.png'),
            )),
      ],
    );
  }
}
