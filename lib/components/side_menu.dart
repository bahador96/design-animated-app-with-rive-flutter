import 'package:animated_app/components/info_card.dart';
import 'package:animated_app/components/size_menu_title.dart';
import 'package:animated_app/models/rive_asset.dart';
import 'package:animated_app/utils/rive_utils.dart';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  RiveAsset selectedMenu = sideMenus.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: const Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InfoCard(
                name: "Abi Anwr",
                profession: "YouTuber",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 32, bottom: 16),
                child: Text(
                  "Browse".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              ...sideMenus.map(
                (menu) => SideMenuTitle(
                  menu: menu,
                  press: () {
                    menu.input!.change(true);

                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        menu.input!.change(false);
                      },
                    );

                    setState(() {
                      selectedMenu = menu;
                    });
                  },
                  riveonInit: (artboard) {
                    StateMachineController controller =
                        RiveUtils.getRiveController(artboard,
                            stateMachineName: menu.stateMachineName);

                    menu.input = controller.findSMI("active") as SMIBool;
                  },
                  isActive: selectedMenu == menu,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 32, bottom: 16),
                child: Text(
                  "History".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              ...sideMenu2.map(
                (menu) => SideMenuTitle(
                  menu: menu,
                  press: () {
                    menu.input!.change(true);

                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        menu.input!.change(false);
                      },
                    );

                    setState(() {
                      selectedMenu = menu;
                    });
                  },
                  riveonInit: (artboard) {
                    StateMachineController controller =
                        RiveUtils.getRiveController(artboard,
                            stateMachineName: menu.stateMachineName);

                    menu.input = controller.findSMI("active") as SMIBool;
                  },
                  isActive: selectedMenu == menu,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
