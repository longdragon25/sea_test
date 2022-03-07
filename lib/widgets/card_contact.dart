import 'package:flutter/material.dart';
import 'package:sea_test/models/contact.dart';
import 'package:sea_test/screens/screens.dart';
import 'package:sea_test/widgets/widgets.dart';

class CardContact extends StatefulWidget {
  final Contact contact;
  const CardContact({Key? key, required this.contact}) : super(key: key);

  @override
  State<CardContact> createState() => _CardContactState();
}

class _CardContactState extends State<CardContact> {
  bool isShowOption = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ContactDetailScreen(
                            contact: widget.contact,
                          )));
            },
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: isShowOption
                      ? Color.fromRGBO(242, 249, 205, 1)
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.5,
                        blurRadius: 1,
                        offset: Offset(1.0, 1.0))
                  ],
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 9,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(widget.contact.avatarImage),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${widget.contact.name}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        color: Colors.black.withOpacity(0.7)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${widget.contact.phoneNumber}  |',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '  ${widget.contact.email}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontWeight: FontWeight.w400,
                                            overflow: TextOverflow.ellipsis),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            isShowOption = !isShowOption;
                          });
                        },
                        icon: Image.asset(
                          'assets/option.png',
                          color: isShowOption
                              ? Color.fromRGBO(184, 161, 91, 1)
                              : Colors.grey.withOpacity(0.5),
                        )),
                  )
                ],
              ),
            ),
          ),
          isShowOption
              ? Container(
                  width: 262,
                  height: 65,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 249, 205, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardItem(
                          imageUrl: 'assets/bell.png', name: 'Appointments'),
                      CardItem(imageUrl: 'assets/note.png', name: 'Notes'),
                      CardItem(
                          imageUrl: 'assets/document.png', name: 'Documents')
                    ],
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  const CardItem({Key? key, required this.imageUrl, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          color: Colors.black.withOpacity(0.7),
          width: 25,
          height: 25,
        ),
        Text(
          '${name}',
          style: Theme.of(context).textTheme.headline5!.copyWith(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
