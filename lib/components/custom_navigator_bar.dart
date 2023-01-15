import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';

class CustomNavigatorBar extends StatefulWidget {
  const CustomNavigatorBar({super.key});

  @override
  State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
}

class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
  final List<IconData> icons = [
    Icons.home_rounded,
    Icons.search_rounded,
    Icons.favorite_outline_rounded,
    Icons.settings_rounded,
  ];

  IconData _selected = Icons.home_rounded;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            backgroundColor,
          ],
        ),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: customBottomHeight,
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                for (var icon in icons)
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selected = icon;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(defaultPadding * 0.7),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selected == icon
                            ? primaryColor
                            : Colors.transparent,
                      ),
                      child: Icon(
                        icon,
                        color:
                            _selected == icon ? backgroundColor : Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
