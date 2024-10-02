// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:my_portifolio/DesktopLayout/features/EducationFeature/components/education_container.dart';

class EducationWidget extends StatefulWidget {
  final List<Widget> educationList;
  final String title;

  const EducationWidget({
    Key? key,
    required this.educationList,
    required this.title,
  }) : super(key: key);
  @override
  State<EducationWidget> createState() => _EducationWidgetState();
}

class _EducationWidgetState extends State<EducationWidget>
    with TickerProviderStateMixin {
  late List<AnimationController> _animationControllers;
  late List<Animation<Offset>> position;
  late List<Animation<double>> opacity;
  @override
  void initState() {
    _animationControllers = List.generate(widget.educationList.length, (index) {
      return AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 400),
      );
    });

    position = List.generate(
      widget.educationList.length,
      (index) => Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _animationControllers[index],
          curve: Curves.easeInOut,
        ),
      ),
    );

    opacity = List.generate(
      widget.educationList.length,
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
  build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         widget.title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.spaceEvenly,
          direction: Axis.vertical,
          children: List.generate(widget.educationList.length, (index) {
            return AnimatedBuilder(
              animation: _animationControllers[index],
              builder: (context, child) {
                return SlideTransition(
                  position: position[index],
                  child: Opacity(
                    opacity: opacity[index].value,
                    child: widget.educationList[index],
                  ),
                );
              },
            );
          }),
        )
      ],
    );
  }
}
