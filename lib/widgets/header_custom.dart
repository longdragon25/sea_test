import 'package:flutter/material.dart';

class HeaderCustom extends StatelessWidget {
  final String nameScreen;
  final bool? isback;
  const HeaderCustom({Key? key, required this.nameScreen, this.isback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nameScreen,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                color: const Color.fromRGBO(133, 37, 43, 1),
                decoration: TextDecoration.underline),
          ),
          isback!
              ? GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    '< CANCEL',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
