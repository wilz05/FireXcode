import 'package:flutter/material.dart';

class XContainer extends StatelessWidget {
  final double? width;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final Color? shadowColor;
  final double? rounded;
  final Widget? child;
  final double? height;
  final double? blurRadius;
  final double? spreadRadius;
  final Offset? offset;
  final Function? onTap;
  final EdgeInsetsGeometry? margin;
  final DecorationImage? image;
  final BorderRadiusGeometry? borderRadius;

  const XContainer(
      {Key? key,
      this.height,
      this.width,
      this.color,
      this.shadowColor,
      this.rounded,
      this.padding,
      this.child,
      this.blurRadius,
      this.spreadRadius,
      this.offset,
      this.onTap,
      this.margin,
      this.image,
      this.borderRadius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: image,
          color: color,
          boxShadow: [
            BoxShadow(
                color: shadowColor == null
                    ? Colors.transparent
                    : shadowColor!.withOpacity(0.4),
                blurRadius: blurRadius ?? 0,
                spreadRadius: spreadRadius ?? 0.0,
                offset: offset ?? Offset(0, 0)),
          ],
          // color: shadowColor,
          borderRadius: borderRadius ?? BorderRadius.circular(rounded ?? 0)),
      child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius:
                  borderRadius ?? BorderRadius.circular(rounded ?? 0)),
          child: InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!();
                }
              },
              child: Padding(
                padding: padding ?? EdgeInsets.all(10.0),
                child: child,
              ))),
    );
  }
}
