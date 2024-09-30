import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';

class CVDownButton extends StatefulWidget {
  const CVDownButton({
    super.key,
  });

  @override
  State<CVDownButton> createState() => _CVDownButtonState();
}

class _CVDownButtonState extends State<CVDownButton> {
  Color _backgroundColor = Colors.grey.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        mouseCursor: MouseCursor.defer,
        onTap: () => {},
        onHover: (isHovering) {
          // Update the color based on whether the mouse is hovering or not
          setState(() {
            _backgroundColor = isHovering
                ? ColorsUtiles.PrimaryColor_blue.withOpacity(0.5)
                : Colors.grey.withOpacity(0.5);
          });
        },
        child: AnimatedContainer(
          duration:
              const Duration(milliseconds: 300), // Smooth transition duration
          alignment: Alignment.center, // Center the text
          // Padding for button-like appearance
          curve: Curves.bounceIn,

          decoration: BoxDecoration(
            color: _backgroundColor, // Change background color on hover
            borderRadius:
                BorderRadius.circular(8), // Slight rounding for aesthetics
          ),
          child: Text(
            'Download CV',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
// import 'package:my_portifolio/core/shared/themes/dark_theme.dart';

// class CVDownButton extends StatefulWidget {
//   CVDownButton({
//     super.key,
//   });

//   @override
//   State<CVDownButton> createState() => _CVDownButtonState();
// }

// class _CVDownButtonState extends State<CVDownButton> {
//   // Create a ValueNotifier to track the background color
//   final ValueNotifier<Color> _backgroundColor =
//       ValueNotifier(Colors.grey.withOpacity(0.5));

//   @override
//   void dispose() {
//     // Dispose the ValueNotifier to prevent memory leaks
//     _backgroundColor.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         mouseCursor: MouseCursor.defer,
//         onTap: () => {},
//         onHover: (isHovering) {
//           // Update the ValueNotifier instead of using setState
//           _backgroundColor.value = isHovering
//               ? ColorsUtiles.PrimaryColor_blue.withOpacity(0.5)
//               : Colors.grey.withOpacity(0.5);
//         },
//         child: ValueListenableBuilder<Color>(
//           valueListenable: _backgroundColor, // Listen to background color changes
//           builder: (context, color, child) {
//             return AnimatedContainer(
//               duration: const Duration(
//                   milliseconds: 300), // Smooth transition duration
//               alignment: Alignment.center, // Center the text
//               curve: Curves.bounceIn,
//               decoration: BoxDecoration(
//                 color: color, // Use the color from ValueNotifier
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Text(
//                 'Download CV',
//                 style: Theme.of(context).textTheme.bodySmall,
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
