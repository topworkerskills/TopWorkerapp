import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
                            '\n\n# TopWorker Privacy Policy\n\nEffective Date: [Date]\n\n## 1. Introduction\n\nWelcome to TopWorker! This Privacy Policy outlines how we collect, use, disclose, and protect your personal information when you use our website and services. By accessing or using TopWorker, you agree to the terms outlined in this policy.\n\n## 2. Information We Collect\n\n### 2.1 Personal Information\n\nWhen you register an account, subscribe to our services, or interact with our platform, we may collect personal information such as your name, email address, contact details, and other information necessary for providing our services.\n\n### 2.2 Usage Information\n\nWe collect information about your interactions with our platform, including pages visited, courses accessed, and other user behavior data.\n\n### 2.3 Payment Information\n\nIf you make payments for our subscription services, we may collect payment details through our third-party payment processor. Please note that we do not store your payment information on our servers.\n\n## 3. How We Use Your Information\n\n### 3.1 Providing Services\n\nWe use your personal information to deliver our services, process payments, and provide customer support.\n\n### 3.2 Communication\n\nWe may use your contact information to send you updates, newsletters, and promotional materials related to our services. You can opt-out of these communications at any time.\n\n### 3.3 Analytics\n\nWe analyze user behavior and preferences to improve our services, enhance user experience, and optimize our platform.\n\n### 3.4 Legal Compliance\n\nWe may use your information to comply with applicable laws, regulations, or legal processes.\n\n## 4. Sharing Your Information\n\nWe do not sell, trade, or rent your personal information to third parties. We may share your information with trusted third parties, such as payment processors and service providers, to deliver our services.\n\n## 5. Security\n\nWe take reasonable measures to protect your information from unauthorized access, disclosure, alteration, or destruction. However, no data transmission or storage system is completely secure, and we cannot guarantee absolute security.\n\n## 6. Cookies\n\nWe use cookies to enhance your user experience and collect data about how you interact with our website. You can manage your cookie preferences through your browser settings.\n\n## 7. Your Choices\n\nYou can manage your account settings, update your information, or unsubscribe from communications through your account dashboard. You may also contact us to exercise your rights under applicable data protection laws.\n\n## 8. Changes to this Policy\n\nTopWorker reserves the right to update or modify this Privacy Policy at any time. We will notify you of significant changes through our platform or other communication channels.\n\n## 9. Contact Information\n\nFor any questions or concerns regarding this Privacy Policy, please contact us at [Your Contact Information].\n\n---\n\nEnsure to replace placeholders like "[Date]" and "[Your Contact Information]" with the appropriate details for your company. Customize the content based on your specific data collection practices and business model.',
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
