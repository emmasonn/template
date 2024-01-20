import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

void pp(Object? object) {
  if (kDebugMode) {
    print(object);
  }
}

class ApiResult<T> extends Equatable {
  final bool canLoadMore;
  final String? nextPageUrl;
  final String? firstPageUrl;
  final String? prevPageUrl;
  final String? path;
  final int? perPage;
  final int? currentPage;
  final int? totalPage;
  final List<T> itemList;

  const ApiResult({
    required this.canLoadMore,
    this.nextPageUrl,
    this.prevPageUrl,
    this.firstPageUrl,
    this.currentPage,
    this.path,
    this.totalPage,
    this.perPage,
    this.itemList = const [],
  });

  factory ApiResult.fromMap(Map<String, dynamic> data) {
    return ApiResult(
      canLoadMore: data['can_load_more'],
      nextPageUrl: data['next_page_url'],
      prevPageUrl: data['prev_page_url'],
      firstPageUrl: data['first_page_url'],
      currentPage: data['current_page'],
      perPage: data['per_page'],
      path: data['path'],
      itemList: data['data'],
    );
  }

  @override
  List<Object?> get props => [
        canLoadMore,
        nextPageUrl,
        firstPageUrl,
        prevPageUrl,
        path,
        perPage,
        itemList
      ];
}
