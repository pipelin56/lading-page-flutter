import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page_flutter/provider/page_provider.dart';
import 'package:landing_page_flutter/ui/shared/custom_menu_item.dart';
import 'package:provider/provider.dart';

class CustomAppMenuWidget extends StatefulWidget {

  @override
  _CustomAppMenuWidgetState createState() => _CustomAppMenuWidgetState();
}

class _CustomAppMenuWidgetState extends State<CustomAppMenuWidget> with SingleTickerProviderStateMixin{

  bool menuIsOpen = false;
  late AnimationController controller;

  @override
  void initState() { 
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {

    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: (){
          
          menuIsOpen ? controller.reverse() : controller.forward();

          setState(() {
            menuIsOpen = !menuIsOpen;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height:  menuIsOpen ? 308 : 50,
          color: Colors.black,
          child: Column(
            children: [
              _MenuTitle(menuIsOpen: menuIsOpen, controller: controller),
              if (menuIsOpen) 
              ...[
                CustomMenuItemWidget(text: 'Home', delay: 60, onPressed: () => pageProvider.goTo(1)),
                CustomMenuItemWidget(text: 'About', delay: 120, onPressed: () => pageProvider.goTo(2)),
                CustomMenuItemWidget(text: 'Pricing', delay: 180, onPressed: () => pageProvider.goTo(3)),
                CustomMenuItemWidget(text: 'Contact', delay: 240, onPressed: () => pageProvider.goTo(4)),
                CustomMenuItemWidget(text: 'Location', delay: 300, onPressed: () => pageProvider.goTo(5)),
                SizedBox(height: 8,)
              ]
            ]
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    Key? key,
    required this.menuIsOpen,
    required this.controller,
  }) : super(key: key);

  final bool menuIsOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
            width: menuIsOpen ? 40 : 0,),
          Text('Menú', style: GoogleFonts.roboto(color: Colors.white, fontSize: 18,
          decoration: TextDecoration.none
           ),),
          Spacer(),
          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller, color: Colors.white)
          
        ],
      ),
    );
  }
}