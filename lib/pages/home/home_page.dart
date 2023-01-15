import 'package:flutter/material.dart';
import 'package:streaming_app/components/custom_navigator_bar.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/pages/home/components/avatar_widget.dart';
import 'package:streaming_app/pages/home/components/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: const HomeBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      extendBody: true,
    );
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      titleSpacing: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            padding: const EdgeInsets.only(left: defaultPadding),
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          const Padding(
            padding: EdgeInsets.only(right: defaultPadding),
            child: AvatarWidget(
              image: 'assets/images/perfil.png',
            ),
          ),
        ],
      ),
    );
  }
}
