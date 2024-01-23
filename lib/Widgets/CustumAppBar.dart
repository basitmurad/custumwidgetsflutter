import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustumAppBar extends StatelessWidget implements PreferredSizeWidget
{

  final String title;
  final Widget? leading;
  final Widget? titleWidget;


  CustumAppBar(
  {
    Key? key,
   this.title = '', this.leading, this.titleWidget});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25 ,
      vertical: 25/2.5),




    )
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);


}




