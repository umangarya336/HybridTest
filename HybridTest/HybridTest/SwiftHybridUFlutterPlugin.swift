import Flutter
import UIKit
//import PayUCheckoutProKit
//import PayUCheckoutProBaseKit

public class SwiftHybridUFlutterPlugin: NSObject, FlutterPlugin {
    
    enum MethodName: String {
        case openCheckoutScreen
        case hashGenerated
    }
    
    let flutterMethodChannel:FlutterMethodChannel
//    var hybridResponse: PayUCheckoutProDelegateResponseTransformerHybrid?

    public init(channel:FlutterMethodChannel) {
        self.flutterMethodChannel = channel
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "HybridUChannel", binaryMessenger: registrar.messenger())
        let instance = SwiftHybridUFlutterPlugin(channel: channel)
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        print("handle method called")
        switch (call.method) {
        case MethodName.openCheckoutScreen.rawValue:
            openCheckoutScreen(result: result, args: call.arguments)
        case MethodName.hashGenerated.rawValue:
            hashGenerated(result: result, args: call.arguments)
        default:
            break
//            onError(PayUUtilsHybrid.getErrorObjectFor(errorType: .invalidMethodName))
        }
    }
    
    private func hashGenerated(result: @escaping FlutterResult,args:Any?) {
        print("hashGenerated method called")
//        hybridResponse?.hashGenerated(args: args) { [weak self] error in
//            if let error = error {
//                self?.onError(error)
//            }
//        }
    }
    
    private func openCheckoutScreen(result: @escaping FlutterResult,args:Any?){
        print("openCheckoutScreen method called")
//        hybridResponse = PayUCheckoutProDelegateTransformerForHybrid()
//        guard let viewController = UIApplication.getTopViewController() else {
//            onError(PayUUtilsHybrid.getErrorObjectFor(errorType: .topViewControllerUnavailable))
//            return
//        }
//        PayUCheckoutProHybrid.open(on: viewController, params: args, delegate: self)
    }
}

//extension SwiftHybridUFlutterPlugin: PayUCheckoutProDelegate {
//    public func onPaymentSuccess(response: Any?) {
//        flutterMethodChannel.invokeMethod(PayUCheckoutProDelegateResponseMethodNameHybrid.onPaymentSuccess,
//                                          arguments: hybridResponse?.onPaymentSuccess(response: response))
//    }
//
//    public func onPaymentFailure(response: Any?) {
//        flutterMethodChannel.invokeMethod(PayUCheckoutProDelegateResponseMethodNameHybrid.onPaymentFailure,
//                                          arguments: hybridResponse?.onPaymentFailure(response: response))
//    }
//
//    public func onPaymentCancel(isTxnInitiated: Bool) {
//        flutterMethodChannel.invokeMethod(PayUCheckoutProDelegateResponseMethodNameHybrid.onPaymentCancel,
//                                          arguments: hybridResponse?.onPaymentCancel(isTxnInitiated: isTxnInitiated))
//    }
//
//    public func onError(_ error: Error?) {
//        flutterMethodChannel.invokeMethod(PayUCheckoutProDelegateResponseMethodNameHybrid.onError,
//                                          arguments: hybridResponse?.onError(error))
//    }
//
//    public func generateHash(for param: DictOfString, onCompletion: @escaping PayUHashGenerationCompletion) {
//        flutterMethodChannel.invokeMethod(PayUCheckoutProDelegateResponseMethodNameHybrid.generateHash,
//                                          arguments: hybridResponse?.generateHash(for: param, onCompletion: onCompletion))
//    }
//}
