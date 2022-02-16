import 'package:flutter/material.dart';
import 'package:known_extents_list_view_builder/known_extents_list_view_builder.dart';
import 'package:known_extents_list_view_builder/render_sliver_known_extents_list.dart';

class SliverKnownExtentsList extends SliverMultiBoxAdaptorWidget {
  /// Creates a sliver that places box children with the same main axis extent
  /// in a linear array.
  const SliverKnownExtentsList({
    Key? key,
    required SliverChildDelegate delegate,
    required this.indexedItemExtent,
  }) : super(key: key, delegate: delegate);

  /// The extent the children are forced to have in the main axis.
  final IndexedItemExtent indexedItemExtent;

  @override
  RenderSliverKnownExtentsList createRenderObject(BuildContext context) {
    final SliverMultiBoxAdaptorElement element =
        context as SliverMultiBoxAdaptorElement;
    return RenderSliverKnownExtentsList(
        childManager: element, indexedItemExtent: indexedItemExtent);
  }

  @override
  void updateRenderObject(BuildContext context, dynamic renderObject) {
    renderObject.indexedItemExtent = indexedItemExtent;
  }
}
