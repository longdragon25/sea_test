import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget with PreferredSizeWidget {
  const AppbarCustom({Key? key}) : super(key: key);
  final int annouceCount = 15;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/leading.png',
          ),
        ),
      ),
      title: Image.asset(
        'assets/logo.png',
        width: 105,
      ),
      centerTitle: false,
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/bell.png',
                  width: 20,
                )),
            Positioned(
                top: 10,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(133, 37, 43, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      '$annouceCount',
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ))
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/stack.png',
              width: 20,
            )),
        Padding(
          padding: const EdgeInsets.only(right: 7),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/setting.png',
                width: 20,
              )),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
