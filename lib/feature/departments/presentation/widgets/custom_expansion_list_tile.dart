import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.children,
  });

  final Widget title;
  final Widget subtitle;
  final List<Widget> children;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with TickerProviderStateMixin {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.responsive(context)),
        border: Border.all(color: AppColor.borderTransparent),
      ),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(12.responsive(context)),
            onTap: () {
              setState(() => _expanded = !_expanded);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.responsive(context),
                vertical: 8.responsive(context),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.title,
                        SizedBox(height: 4.responsive(context)),
                        widget.subtitle,
                      ],
                    ),
                  ),
                  AnimatedRotation(
                    turns: _expanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 20.responsive(context),
                    ),
                  ),
                ],
              ),
            ),
          ),

          AnimatedSize(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            child: _expanded
                ? Padding(
                    padding: EdgeInsets.only(
                      left: 16.responsive(context),
                      right: 16.responsive(context),
                      bottom: 8.responsive(context),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.children,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
