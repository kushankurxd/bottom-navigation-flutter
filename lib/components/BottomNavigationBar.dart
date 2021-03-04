import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarXD extends StatefulWidget {
  Function onItemClick;
  var selected = 0;
  BottomNavigationBarXD(this.onItemClick, this.selected);
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarXDState();
  }
}

class _BottomNavigationBarXDState extends State<BottomNavigationBarXD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 54,
      decoration: BoxDecoration(
          color: Color(0xffF7FCFE),
          boxShadow: [
            BoxShadow(
              color: Color(0xff5DB9F9).withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(40)),
      padding: EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              widget.onItemClick(0);
            },
            child: widget.selected == 0
                ? Container(
                    decoration: BoxDecoration(
                        color: Color(0xff03A9F4),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FeatherIcons.home,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 6),
                        Text('Home',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.2,
                                fontSize: 16)),
                      ],
                    ),
                  )
                : Icon(FeatherIcons.home),
          ),
          GestureDetector(
              onTap: () {
                widget.onItemClick(1);
              },
              child: widget.selected == 1
                  ? Container(
                      decoration: BoxDecoration(
                          color: Color(0xff03A9F4),
                          borderRadius: BorderRadius.circular(40)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FeatherIcons.monitor,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(width: 6),
                          Text('Analysis',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                  fontSize: 16)),
                        ],
                      ),
                    )
                  : Icon(FeatherIcons.monitor)),
          GestureDetector(
              onTap: () {
                widget.onItemClick(2);
              },
              child: widget.selected == 2
                  ? Container(
                      decoration: BoxDecoration(
                          color: Color(0xff03A9F4),
                          borderRadius: BorderRadius.circular(40)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FeatherIcons.settings,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(width: 6),
                          Text('Settings',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                  fontSize: 16)),
                        ],
                      ),
                    )
                  : Icon(FeatherIcons.settings)),
          GestureDetector(
              onTap: () {
                widget.onItemClick(3);
              },
              child: widget.selected == 3
                  ? Container(
                      decoration: BoxDecoration(
                          color: Color(0xff03A9F4),
                          borderRadius: BorderRadius.circular(40)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FeatherIcons.user,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(width: 6),
                          Text('Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                  fontSize: 16)),
                        ],
                      ),
                    )
                  : Icon(FeatherIcons.user))
        ],
      ),
    );
  }
}
