import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

mixin PagingMixin<T> {
  final ScrollController scrollController = ScrollController();
  final RefreshController refreshController = RefreshController();
  int page = 0;
  int size = 50;
  List<T> models = [];
  initPaging() {
    listenPaging();
    fetch(page);
  }

  listenPaging() {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels ==
                scrollController.position.maxScrollExtent &&
            models.isNotEmpty) {
          onEndList();
        }
      }
    });
  }

  fetch(int page);
  loading();
  onEndList() {
    ++page;
    fetch(page);
  }

  emptyData() {
    models.clear();
  }

  pullRefresh() async {
    page = 0;
    emptyData();
    loading();
    await fetch(page);
    refreshController.refreshCompleted();
  }
}
