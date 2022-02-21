import 'package:flutter/material.dart';

class GradientBackgroundButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Icon icon;
  final double leftIcon, rightIcon;
  final VoidCallback onPressed;

  const GradientBackgroundButton({
    Key? key,
    required this.child,
    required this.gradient,
    required this.icon,
    this.leftIcon = 20,
    this.rightIcon = 1,
    this.width = double.infinity,
    this.height = 50.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
          gradient: gradient,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 2),
              blurRadius: 2,
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(18.0))),
      // child: Material(
      //   borderRadius: const BorderRadius.all(Radius.circular(18.0)),
      //   color: Colors.transparent,
      child:
          ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0.0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)))),
              child: Center(
                child: 
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(rightIcon, 0, leftIcon, 0),
                        child: icon,
                      ),
                      child
                    ]),
              )),
    );
  }
}
