import '/flutter_flow/flutter_flow_util.dart';
import 'list_communities_widget.dart' show ListCommunitiesWidget;
import 'package:flutter/material.dart';

class ListCommunitiesModel extends FlutterFlowModel<ListCommunitiesWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
