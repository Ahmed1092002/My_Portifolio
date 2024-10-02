// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/my_biographay_details_widget.dart';

class MyBioList extends StatefulWidget {
  const MyBioList({
    super.key,
  });

  @override
  State<MyBioList> createState() => _MyBioListState();
}

class _MyBioListState extends State<MyBioList> with TickerProviderStateMixin {
  late List<AnimationController> _animationControllers;
  late List<Animation<Offset>> position;
  late List<Animation<double>> opacity;

  List<Widget> myBio = const [
    MyBiographayDetailsWidget(
      title: "Name",
      desripion: "Ahmed Tamer Elsayed",
    ),
    MyBiographayDetailsWidget(
      title: "Age",
      desripion: "22 years",
    ),
    MyBiographayDetailsWidget(title: "Email", desripion: "atamer802@yahoo.com"),
    MyBiographayDetailsWidget(
      title: "Phone",
      desripion: "+201000807490",
    ),
    MyBiographayDetailsWidget(
      title: "Address",
      desripion: "Egypt,cairo,Elzayton",
    ),
    MyBiographayDetailsWidget(
      title: "Freelance",
      desripion: "Available",
    ),
    MyBiographayDetailsWidget(
      title: "Birthday",
      desripion: "10/9/2002",
    ),    MyBiographayDetailsWidget(
      title: " Military Service",
      desripion: "Exempt",
    ),
  ];

  @override
  void initState() {
    _animationControllers = List.generate(myBio.length, (index) {
      return AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 400),
      );
    });

    position = List.generate(
      myBio.length,
      (index) => Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _animationControllers[index],
          curve: Curves.easeInOut,
        ),
      ),
    );

    opacity = List.generate(
      myBio.length,
      (index) => Tween<double>(
        begin: 0,
        end: 1,
      ).animate(
        CurvedAnimation(
          parent: _animationControllers[index],
          curve: Curves.easeInOut,
        ),
      ),
    );
    loadIncreamentally();

    super.initState();
  }

  @override
  void dispose() {
    for (var controller in _animationControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> loadIncreamentally() async {
    for (int i = 0; i < _animationControllers.length; i++) {
      await Future.delayed(
          const Duration(milliseconds: 300)); // Delay between animations
      _animationControllers[i].forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.spaceEvenly,
      runSpacing: 50,
      spacing: 50,
      children: List.generate(myBio.length, (index) {
        return AnimatedBuilder(
          animation: _animationControllers[index],
          builder: (context, child) {
            return SlideTransition(
              position: position[index],
              child: Opacity(
                opacity: opacity[index].value,
                child: myBio[index],
              ),
            );
          },
        );
      }),
    );
  }
}
