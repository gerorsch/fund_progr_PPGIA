import '/flutter_flow/flutter_flow_util.dart';
import 'community_page_widget.dart' show CommunityPageWidget;
import 'package:flutter/material.dart';

class CommunityPageModel extends FlutterFlowModel<CommunityPageWidget> {
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
