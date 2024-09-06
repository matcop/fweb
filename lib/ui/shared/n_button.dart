import 'package:flutter/material.dart';

class NButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final int type;

  const NButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.type})
      : super(key: key);

  Widget _circle(double width, double height, Color primaryColor) {
    return Container(
      width: width * 0.1,
      height: height * 0.1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: primaryColor,
        boxShadow: [
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 5,
              spreadRadius: 2),
          BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(4, 4),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _rectangle(double width, double height, Color primaryColor) {
    return Container(
      width: width,
      height: height * .08,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        shape: BoxShape.rectangle,
        color: primaryColor,
        boxShadow: [
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 5,
              spreadRadius: 2),
          BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(4, 4),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _corners(double width, double height, Color primaryColor) {
    return Container(
      width: width * 0.1,
      height: height * 0.1,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 5,
              spreadRadius: 2),
          BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(4, 4),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Color primaryColor = const Color(0xFFF4F4F4);

    if (type == 1) return _circle(height, height, primaryColor);

    if (type == 2) return _rectangle(width, height, primaryColor);

    if (type == 3) return _corners(height, height, primaryColor);

    return _rectangle(width, height, primaryColor);
  }
}
