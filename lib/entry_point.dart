import 'dart:math';

import 'package:animated_app/components/animated_bar.dart';
import 'package:animated_app/components/side_menu.dart';
import 'package:animated_app/constants/constants.dart';

import 'package:animated_app/models/menu_btn.dart';

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

class _EntryPointState extends State<EntryPoint>
    with SingleTickerProviderStateMixin {
  RiveAsset selectBottomNav = bottomNav.first;
  late SMIBool isSideBarClosed;

  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;

  bool isSideMenuClosed = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        microseconds: 200,
      ),
    )..addListener(() {
        setState(() {});
      });
    super.initState();

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(microseconds: 800),
            curve: Curves.fastOutSlowIn,
            width: 288,
            left: isSideMenuClosed ? -288 : 0,
            height: MediaQuery.of(context).size.height,
            child: const SideMenu(),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(animation.value - 30 * animation.value * pi / 180),
            child: Transform.translate(
              offset: Offset(animation.value * 265, 0),
              child: Transform.scale(
                scale: scaleAnimation.value,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: const HomeScreen(),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(microseconds: 200),
            top: 16,
            left: isSideMenuClosed ? 0 : 220,
            curve: Curves.fastOutSlowIn,
            child: MenuBtn(
              press: () {
                isSideBarClosed.value = !isSideBarClosed.value;

                if (isSideMenuClosed) {
                  _animationController.forward();
                } else {
                  _animationController.reverse();
                }

                setState(() {
                  isSideMenuClosed = isSideBarClosed.value;
                });
              },
              riveOnInit: (artboard) {
                StateMachineController controller = RiveUtils.getRiveController(
                    artboard,
                    stateMachineName: "State Machine");
                isSideBarClosed = controller.findSMI("isOpen") as SMIBool;
                isSideBarClosed.value = true;
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0, 100 * animation.value),
        child: SafeArea(
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
      ),
    );
  }
}
