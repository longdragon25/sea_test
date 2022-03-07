import 'package:flutter/material.dart';
import 'package:sea_test/models/contact.dart';
import 'package:sea_test/widgets/widgets.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarCustom(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            HeaderCustom(
              nameScreen: 'Contacts',
              isback: false,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Contact.contacts.length,
                itemBuilder: (context, index) {
                  return CardContact(contact: Contact.contacts[index]);
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
          tab1: TabItem(icon: 'assets/help.png', name: 'Help'),
          tab2: TabItem(icon: 'assets/quick_report.png', name: 'Quick Report'),
          tab3: TabItem(icon: 'assets/excel_report.png', name: 'Excel Report'),
          tab4: TabItem(icon: 'assets/option.png'),
          fab: TabItem(
            icon: 'assets/add.png',
          )),
    );
  }
}
