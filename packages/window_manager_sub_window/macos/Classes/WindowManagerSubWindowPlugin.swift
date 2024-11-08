import Cocoa
import FlutterMacOS

public class WindowManagerSubWindowPlugin: NSObject, FlutterPlugin {
    public static var RegisterGeneratedPlugins:((FlutterPluginRegistry) -> Void)?
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "window_manager_sub_window", binaryMessenger: registrar.messenger)
        let instance = WindowManagerSubWindowPlugin(registrar, channel)
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    private var registrar: FlutterPluginRegistrar!;
    private var channel: FlutterMethodChannel!
    
    private var mainWindow: NSWindow {
        get {
            return (self.registrar.view?.window)!;
        }
    }
    
    private var _inited: Bool = false
    private var windowManagerSubWindow: WindowManagerSubWindow = WindowManagerSubWindow()
    
    public init(_ registrar: FlutterPluginRegistrar, _ channel: FlutterMethodChannel) {
        super.init()
        self.registrar = registrar
        self.channel = channel
    }
    
    private func ensureInitialized() {
        if (!_inited) {
            windowManagerSubWindow.mainWindow = mainWindow
            windowManagerSubWindow.onEvent = {
                (eventName: String) in
                self._emitEvent(eventName)
            }
            _inited = true
        }
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let methodName: String = call.method
        let args: [String: Any] = call.arguments as? [String: Any] ?? [:]
        
        switch (methodName) {
        case "ensureInitialized":
            ensureInitialized()
            result(true)
            break
        case "waitUntilReadyToShow":
            windowManagerSubWindow.waitUntilReadyToShow()
            result(true)
            break
        case "setAsFrameless":
            windowManagerSubWindow.setAsFrameless()
            result(true)
            break
        case "destroy":
            windowManagerSubWindow.destroy()
            result(true)
            break
        case "close":
            windowManagerSubWindow.close()
            result(true)
            break
        case "isPreventClose":
            result(windowManagerSubWindow.isPreventClose())
            break
        case "setPreventClose":
            windowManagerSubWindow.setPreventClose(args)
            result(true)
            break
        case "focus":
            windowManagerSubWindow.focus()
            result(true)
            break
        case "blur":
            windowManagerSubWindow.blur()
            result(true)
            break
        case "isFocused":
            result(windowManagerSubWindow.isFocused())
            break
        case "show":
            windowManagerSubWindow.show()
            result(true)
            break
        case "hide":
            windowManagerSubWindow.hide()
            result(true)
            break
        case "isVisible":
            result(windowManagerSubWindow.isVisible())
            break
        case "isMaximized":
            result(windowManagerSubWindow.isMaximized())
            break
        case "maximize":
            windowManagerSubWindow.maximize()
            result(true)
            break
        case "unmaximize":
            windowManagerSubWindow.unmaximize()
            result(true)
            break
        case "isMinimized":
            result(windowManagerSubWindow.isMinimized())
            break
        case "isMaximizable":
            result(windowManagerSubWindow.isMaximizable())
            break
        case "setMaximizable":
            windowManagerSubWindow.setIsMaximizable(args)
            result(true)
            break
        case "minimize":
            windowManagerSubWindow.minimize()
            result(true)
            break
        case "restore":
            windowManagerSubWindow.restore()
            result(true)
            break
        case "isDockable":
            result(windowManagerSubWindow.isDockable())
            break
        case "isDocked":
            result(windowManagerSubWindow.isDocked())
            break
        case "dock":
            windowManagerSubWindow.dock(args)
            result(true)
            break
        case "undock":
            windowManagerSubWindow.undock()
            result(true)
            break
        case "isFullScreen":
            result(windowManagerSubWindow.isFullScreen())
            break
        case "setFullScreen":
            windowManagerSubWindow.setFullScreen(args)
            result(true)
            break
        case "setAspectRatio":
            windowManagerSubWindow.setAspectRatio(args)
            result(true)
            break
        case "setBackgroundColor":
            windowManagerSubWindow.setBackgroundColor(args)
            result(true)
            break
        case "getBounds":
            result(windowManagerSubWindow.getBounds())
            break
        case "setBounds":
            windowManagerSubWindow.setBounds(args)
            result(true)
            break
        case "setMinimumSize":
            windowManagerSubWindow.setMinimumSize(args)
            result(true)
            break
        case "setMaximumSize":
            windowManagerSubWindow.setMaximumSize(args)
            result(true)
            break
        case "isResizable":
            result(windowManagerSubWindow.isResizable())
            break
        case "setResizable":
            windowManagerSubWindow.setResizable(args)
            result(true)
            break
        case "isMovable":
            result(windowManagerSubWindow.isMovable())
            break
        case "setMovable":
            windowManagerSubWindow.setMovable(args)
            result(true)
            break
        case "isMinimizable":
            result(windowManagerSubWindow.isMinimizable())
            break
        case "setMinimizable":
            windowManagerSubWindow.setMinimizable(args)
            result(true)
            break
        case "isClosable":
            result(windowManagerSubWindow.isClosable())
            break
        case "setClosable":
            windowManagerSubWindow.setClosable(args)
            result(true)
            break
        case "isAlwaysOnTop":
            result(windowManagerSubWindow.isAlwaysOnTop())
            break
        case "setAlwaysOnTop":
            windowManagerSubWindow.setAlwaysOnTop(args)
            result(true)
            break
        case "getTitle":
            result(windowManagerSubWindow.getTitle())
            break
        case "setTitle":
            windowManagerSubWindow.setTitle(args)
            result(true)
            break
        case "setTitleBarStyle":
            windowManagerSubWindow.setTitleBarStyle(args)
            result(true)
            break
        case "getTitleBarHeight":
            result(windowManagerSubWindow.getTitleBarHeight())
            break
        case "isSkipTaskbar":
            result(windowManagerSubWindow.isSkipTaskbar())
            break
        case "setSkipTaskbar":
            windowManagerSubWindow.setSkipTaskbar(args)
            result(true)
            break
        case "setBadgeLabel":
            windowManagerSubWindow.setBadgeLabel(args)
            result(true)
            break
        case "setProgressBar":
            windowManagerSubWindow.setProgressBar(args)
            result(true)
            break
        case "isVisibleOnAllWorkspaces":
            result(windowManagerSubWindow.isVisibleOnAllWorkspaces())
            break
        case "setVisibleOnAllWorkspaces":
            windowManagerSubWindow.setVisibleOnAllWorkspaces(args)
            result(true)
            break
        case "hasShadow":
            result(windowManagerSubWindow.hasShadow())
            break
        case "setHasShadow":
            windowManagerSubWindow.setHasShadow(args)
            result(true)
            break
        case "getOpacity":
            result(windowManagerSubWindow.getOpacity())
            break
        case "setOpacity":
            windowManagerSubWindow.setOpacity(args)
            result(true)
            break
        case "setBrightness":
            windowManagerSubWindow.setBrightness(args)
            result(true)
            break
        case "setIgnoreMouseEvents":
            windowManagerSubWindow.setIgnoreMouseEvents(args)
            result(true)
            break
        case "startDragging":
            windowManagerSubWindow.startDragging()
            result(true)
            break
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    public func _emitEvent(_ eventName: String) {
        let args: NSDictionary = [
            "eventName": eventName,
        ]
        channel.invokeMethod("onEvent", arguments: args, result: nil)
    }
}
