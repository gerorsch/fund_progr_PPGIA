import '/flutter_flow/flutter_flow_util.dart';
import 'comments_community_widget.dart' show CommentsCommunityWidget;
import 'package:flutter/material.dart';

class CommentsCommunityModel extends FlutterFlowModel<CommentsCommunityWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
