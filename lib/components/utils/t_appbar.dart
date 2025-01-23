import 'package:flutter/material.dart';

class TAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? customTitle;
  final TextStyle? titleStyle;
  final Widget? leading;
  final List<Widget>? actions;
  final double? leadingWidth;
  final VoidCallback? onBack;
  final bool showLeadingIcon;
  final bool centerTitle;
  final Function(String? value)? onChanged;
  final Function(String? value)? onSaved;
  final VoidCallback? onSearchDismiss;
  final IconData? leadingData;

  const TAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.leadingWidth,
    this.onBack,
    this.titleStyle,
    this.showLeadingIcon = true,
    this.centerTitle = true,
    this.customTitle,
    this.onChanged,
    this.onSaved,
    this.onSearchDismiss,
    this.leadingData,
  });

  @override
  State<TAppBar> createState() => _TAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _TAppBarState extends State<TAppBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (_isSearching) {
        _controller.forward();
      } else {
        if (widget.onSearchDismiss != null) {
          widget.onSearchDismiss!();
        }
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: widget.leadingWidth,
      elevation: 0,
      forceMaterialTransparency: true,
      centerTitle: widget.centerTitle,
      titleTextStyle: widget.titleStyle,
      leading: widget.leading ??
          (widget.showLeadingIcon && ModalRoute.of(context)!.canPop
              ? IconButton(
                  onPressed: widget.onBack ??
                      () {
                        Navigator.of(context).pop();
                      },
                  icon: Icon(
                    widget.leadingData ?? Icons.arrow_back_ios,
                  ),
                )
              : null),
      title: _isSearching
          ? SizeTransition(
              sizeFactor: _animation,
              axis: Axis.horizontal,
              child: TextFormField(
                onTapOutside: (_) {
                  FocusScope.of(context).unfocus();
                },
                onChanged: widget.onChanged,
                onFieldSubmitted: widget.onSaved,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: _toggleSearch,
                  ),
                ),
                autofocus: true,
              ),
            )
          : widget.customTitle ??
              Text(
                widget.title ?? '',
                style: widget.titleStyle ??
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
      actions: _isSearching
          ? null
          : [
              if (widget.onSaved != null)
                IconButton(
                  onPressed: _toggleSearch,
                  icon: const Icon(Icons.search),
                ),
              ...?widget.actions,
            ],
    );
  }
}
