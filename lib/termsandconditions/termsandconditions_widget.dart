import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'termsandconditions_model.dart';
export 'termsandconditions_model.dart';

class TermsandconditionsWidget extends StatefulWidget {
  const TermsandconditionsWidget({super.key});

  @override
  State<TermsandconditionsWidget> createState() =>
      _TermsandconditionsWidgetState();
}

class _TermsandconditionsWidgetState extends State<TermsandconditionsWidget> {
  late TermsandconditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsandconditionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 570.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Text(
                            '\n\n# TopWorker Terms and Conditions\n\n## 1. Introduction\n\nWelcome to TopWorker! These Terms and Conditions govern your use of the TopWorker website, services, and any related content. By accessing or using our services, you agree to comply with and be bound by these terms. If you do not agree with any part of these terms, please do not use our services.\n\n## 2. Registration and Account\n\nTo access certain features of our services, you may need to create an account. You agree to provide accurate, current, and complete information during the registration process and to update such information to keep it accurate, current, and complete.\n\n## 3. Privacy Policy\n\nYour use of our services is also governed by our Privacy Policy. Please review our Privacy Policy to understand how we collect, use, and disclose information about you.\n\n## 4. Subscription and Payments\n\nIf you choose to subscribe to any of our services, you agree to pay all applicable fees. Payment terms and renewal policies are specified on our website. We use third-party payment processors and do not store your payment information.\n\n## 5. Content Ownership\n\nTopWorker retains ownership of all content, including courses, materials, and intellectual property available on our platform. You may not reproduce, distribute, modify, or create derivative works from our content without our explicit permission.\n\n## 6. User Conduct\n\nYou agree not to engage in any conduct that may disrupt or interfere with our services, including but not limited to hacking, distributing malware, or violating any applicable laws.\n\n## 7. Termination\n\nWe reserve the right to terminate or suspend your account and access to our services at our sole discretion, without notice, for any reason, including a breach of these terms.\n\n## 8. Disclaimers\n\nOur services are provided "as is" without warranties of any kind, either express or implied. We do not guarantee the accuracy, completeness, or reliability of any content.\n\n## 9. Limitation of Liability\n\nTo the fullest extent permitted by applicable law, TopWorker and its affiliates shall not be liable for any indirect, incidental, special, consequential, or punitive damages.\n\n## 10. Governing Law\n\nThese terms are governed by and construed in accordance with the laws of [Your Jurisdiction]. Any disputes arising from these terms will be subject to the exclusive jurisdiction of the courts in [Your Jurisdiction].\n\n## 11. Changes to Terms\n\nTopWorker reserves the right to update or modify these terms at any time. Your continued use of our services after any changes constitute acceptance of the modified terms.\n\n## Contact Information:\n\nFor any questions regarding these terms, please contact us at [Your Contact Information].\n\nLast updated: [Date]\n\n---\n\nMake sure to replace placeholders like "[Your Jurisdiction]" and "[Your Contact Information]" with the appropriate details for your company. Additionally, customize the content based on your specific business model and services.',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
