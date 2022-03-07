import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  final TabItem tab1;
  final TabItem tab2;
  final TabItem tab3;
  final TabItem tab4;
  final TabItem fab;

  const BottomNavigationBarCustom(
      {Key? key,
      required this.tab1,
      required this.tab2,
      required this.tab3,
      required this.tab4,
      required this.fab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
              height: 90,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(192, 209, 125, 1),
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabCard(
                    item: tab1,
                  ),
                  TabCard(
                    item: tab2,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TabCard(
                    item: tab3,
                  ),
                  TabCard(
                    item: tab4,
                  ),
                ],
              )),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 15 - 22.5,
            bottom: 55,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(133, 37, 43, 1),
                    )),
                Image.asset(
                  fab.icon,
                  width: 24,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TabCard extends StatelessWidget {
  final TabItem item;
  const TabCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Image.asset(
            item.icon,
            color: Colors.black.withOpacity(0.7),
            width: 30,
            height: 40,
          ),
          item.name != null
              ? Text(
                  '${item.name}',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.black.withOpacity(0.7)),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

class TabItem {
  String icon;
  String? name;
  TabItem({required this.icon, this.name});
}
