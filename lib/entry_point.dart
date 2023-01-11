import 'package:animated_app/components/animated_bar.dart';
import 'package:animated_app/constants/constants.dart';

import 'package:animated_app/models/rive_asset.dart';
import 'package:animated_app/screens/home/home_screen.dart';
import 'package:animated_app/utils/rive_utils.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  // late SMIBool searchTigger;
  RiveAsset selectBottomNav = bottomNav.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: false,
      body: const HomeScreen(),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
          decoration: BoxDecoration(
            color: backgroundColor2.withOpacity(0.8),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                bottomNav.length,
                (index) => GestureDetector(
                  onTap: () {
                    bottomNav[index].input!.change(true);

                    if (bottomNav[index] != selectBottomNav) {
                      setState(() {
                        selectBottomNav = bottomNav[index];
                      });
                    }
                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        bottomNav[index].input!.change(false);
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedBar(
                        isActive: bottomNav[index] == selectBottomNav,
                      ),
                      SizedBox(
                        width: 36,
                        height: 36,
                        child: Opacity(
                          opacity:
                              bottomNav[index] == selectBottomNav ? 1 : 0.5,
                          child: RiveAnimation.asset(
                            bottomNav.first.src,
                            artboard: bottomNav[index].artboard,
                            onInit: (artboard) {
                              StateMachineController controller =
                                  RiveUtils.getRiveController(artboard,
                                      stateMachineName:
                                          bottomNav[index].stateMachineName);

                              bottomNav[index].input =
                                  controller.findSMI("active") as SMIBool;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
