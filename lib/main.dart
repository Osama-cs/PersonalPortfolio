import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osama_portfolio/footer/footer_view.dart';
import 'package:osama_portfolio/header/header_page.dart';
import 'package:osama_portfolio/navigation/navigation_bar.dart';
import 'package:osama_portfolio/project/project_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Osama Ilyas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
            displayMedium: GoogleFonts.robotoSlab(
              color: Colors.black,
            ),
            headlineMedium: GoogleFonts.robotoSlab(
              fontSize: 30,
              color: Colors.black,
            )),
      ),
      home: const PortfolioView(),
    );
  }
}

class PortfolioView extends StatefulWidget {
  const PortfolioView({
    Key? key,
  }) : super(key: key);

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> with AfterLayoutMixin {
  final projectKey = GlobalKey();
  final aboutKey = GlobalKey();
  final ScrollController scrollController = ScrollController(
    initialScrollOffset: 0,
  );

  @override
  void afterFirstLayout(BuildContext context) {
    // final kNavItems = [
    //   NavigationItem(
    //     "About Me",
    //     key: aboutKey,
    //   ),
    //   NavigationItem(
    //     "Projects",
    //     key: projectKey,
    //   ),
    // ];
    // final projectPosition = _getPosition(projectKey);
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawer: const WebDrawer(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const NavBar(),
            HeaderPage(
              key: aboutKey,
            ),
            ProjectPage(
              key: projectKey,
            ),
            const FooterView(),
            // Container(
            //   height: height,
            //   width: width,
            //   color: Colors.blue,
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   const Icon(Icons.arrow_upward);
      //   scrollController.animateTo(
      //     0,
      //     duration: const Duration(microseconds: 700),
      //     curve: Curves.easeInOut,
      //   );
      // }),
    );
  }
}

class WebDrawer extends StatelessWidget {
  const WebDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return const SizedBox();
        return Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    tileMode: TileMode.repeated,
                  ),
                ),
                child: Text('Osama Ilyas'),
              ),
              for (var item in [])
                ListTile(
                  leading: const Icon(
                    Icons.home,
                  ),
                  title: Text(item.navText),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

class NavigationItem {
  final String navText;
  final GlobalKey key;
  NavigationItem(
    this.navText, {
    required this.key,
  });
  double get pagePosition => _getPosition(key);
}

double _getPosition(GlobalKey key) {
  final renderBox = key.currentContext!.findRenderObject() as RenderBox;
  final position = renderBox.localToGlobal(Offset.zero);
  final scrollOffset = position.dy;
  return scrollOffset;
}
