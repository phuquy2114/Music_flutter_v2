import 'dart:async';

import 'package:flutter/foundation.dart';

mixin ListViewHelper<T> {
  Completer? _completer;

  int page = 1;
  int? _limitPage;

  int get limit => 10;

  int? _total;

  int? get total => _total;

  List<T>? _items;

  /// for displaying purpose
  /// in case, [_items] is cleared in [refresh], it will be use for displaying item,
  /// prevent the case when user scrolldown and index is out of range
  List<T>? _tempItems;

  List<T>? get items => _tempItems;

  /// await [refreshComplete] when start refreshing list
  /// no need to override
  Future? get refreshComplete => _completer?.future;

  /// must call super before handle your logic
  /// override to handle your additional logic, e.g: calling api from page 1
  @mustCallSuper
  void refresh() {
    startLoading();
    resetList();
  }

  /// action for calling api
  /// must call super before handle your logic
  /// override to handle your additional logic, e.g: load the next page
  @mustCallSuper
  void loadMore() {
    if(shouldLoad()) {
      page += 1;
    }
  }

  /// condition for loading more
  /// override to handle your additional logic
  @mustCallSuper
  bool shouldLoad() => !isEndOfList && (_limitPage == null || _limitPage! >= page);

  /// clear list and reset page = 1
  /// no need to override
  void resetList() {
    page = 1;
    clearItems();
  }

  /// call when starting calling your api
  /// no need to override
  void startLoading() {
    if (_completer == null || (_completer?.isCompleted ?? false)) {
      _completer = Completer();
    }
  }

  /// no need to override
  /// call when calling your api completely
  void completeLoading() {
    if (!(_completer?.isCompleted ?? true)) {
      _completer?.complete();
    }
  }

  /// no need to override
  void addMore(
      {required List<T> nextItems,
      required int total,
      String? nextCursor,
      int? index,
      int? limitPage}) {
    _total = total;
    _limitPage = limitPage;
    _items ??= [];
    final _index = index ?? (_items?.isEmpty ?? true ? 0 : _items?.length);
    _items?.insertAll(_index ?? 0, nextItems);
    _tempItems = List.of(_items ?? <T>[]);
  }

  /// no need to override
  void update({required List<T> newList, int? total, String? nextCursor}) {
    _total = total ?? _total;
    _items = List.of(newList);
    _tempItems = List.of(newList);
  }

  ///no need to override
  void removeWhere(bool Function(T e) test) {
    _items?.removeWhere(test);
    _tempItems?.removeWhere(test);
  }

  ///no need to override
  void updateItem({required int index, required T update}) {
    if (!(_items?.isEmpty ?? true) && !(_tempItems?.isEmpty ?? true)) {
      _items?[index] = update;
      _tempItems?[index] = update;
    }
  }

  ///no need to override
  void insert({required int index, required T item}) {
    if (!(_items?.isEmpty ?? true) && !(_tempItems?.isEmpty ?? true)) {
      final _tempList = List.of(_tempItems ?? <T>[]);
      _tempList.insert(index, item);
      _items = List.of(_tempList);
      _tempItems = List.of(_tempList);
    }
  }

  ///no need to override
  ///clear [items], e.g: refresh the list need to clear list first
  void clearItems() {
    _items?.clear();
  }

  ///no need to override
  void increaseTotal(int amount) {
    _total = _total ?? 0 + amount;
  }

  ///no need to override
  bool get isEndOfList {
    return (_items?.length ?? 0) >= (_total ?? 0);
  }
}
