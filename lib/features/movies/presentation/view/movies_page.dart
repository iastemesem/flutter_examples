import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_examples/app/config/app_router.dart';

@RoutePage(name: 'MoviesTab')
class MoviesPage extends StatelessWidget {
  const MoviesPage({
    super.key,
    @PathParam('id') this.movieId,
  });

  final int? movieId;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return _MovieItemWidget(
          index: index,
          emulateClick: movieId == index,
        );
      },
    );
  }
}

class _MovieItemWidget extends StatefulWidget {
  const _MovieItemWidget({
    required this.index,
    required this.emulateClick,
    super.key,
  });

  final int index;
  final bool emulateClick;

  @override
  State<_MovieItemWidget> createState() => _MovieItemWidgetState();
}

class _MovieItemWidgetState extends State<_MovieItemWidget> {
  late final VoidCallback _onTap;

  @override
  void initState() {
    super.initState();
    _onTap = () {
      context.router.push(const MovieDetailsRoute());
    };
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.emulateClick) {
        _onTap.call();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: ListTile(
        title: Text('Movie ${widget.index}'),
      ),
    );
  }
}
