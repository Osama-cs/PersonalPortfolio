import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        return Container(
          height: 60,
          width: double.infinity,
          color: Colors.cyan.shade300,
          child: Row(children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              'images/logo_transparent.png',
            ),
            const Spacer(),
            // IconButton(
            //     onPressed: () => Scaffold.of(context).openEndDrawer(),
            //     icon: const Icon(Icons.menu))
          ]),
        );
      }

      // onPressed() => print("click");
      return Container(
        height: 100,
        // width: 1507,

        color: Colors.cyan.shade300,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset(
              'images/logo_transparent.png',
            ),
            const Spacer(),
            // for (var item in [])
            //   NavBarItem(onPressed: onPressed, navText: item.navText),
          ],
        ),
      );
    });
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.onPressed,
    required this.navText,
  });

  final void Function() onPressed;
  final String navText;

  @override
  Widget build(BuildContext context) {
    // final isSmall = MediaQuery.of(context).size.width < 650;

    return Container(
      padding: const EdgeInsets.only(left: 64),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        onTap: onPressed,
        child: Text(
          navText,
          style: GoogleFonts.robotoSlab(fontSize: 24),
        ),
      ),
    );
  }
}
