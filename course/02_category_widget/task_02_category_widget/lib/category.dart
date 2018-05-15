// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  final String _categoryName;
  final MaterialColor _categoryColor;
  final IconData _categoryIcon;

  const Category(this._categoryName, this._categoryColor, this._categoryIcon);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    final Icon _icon = Icon(_categoryIcon);
    final Text _txt2 = Text(_categoryName, textAlign: TextAlign.right);

    final Padding _padding = Padding(
      child: _icon,
      padding: EdgeInsets.only(bottom: 0.0, top: 0.0, left: 80.0, right: 80.0),
    );
    final Center _center = Center(
      child: _txt2,
      widthFactor: 2.0,
    );

    final Row _row = Row(
      children: <Widget>[_padding, _center],
    );
    final InkWell _inkwell = InkWell(
      borderRadius: BorderRadius.circular(50.0),
      child: _row,
    );
    final Container _cont = Container(
      height: 100.00,
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: _inkwell,
    );

    return Material(
      child: _cont,
    );
  }
}
