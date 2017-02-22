import Cocoa
@testable import Element
@testable import Utils

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    weak var window: NSWindow!
    var win:NSWindow?/*<--The window must be a class variable, local variables doesn't work*/
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        //print(ArrayParser.difference([1,2], [1]))
        NSApp.windows[0].close()/*<--Close the initial non-optional default window*/
        
        //StyleManager.addStylesByURL("~/Desktop/ElCapitan/explorer.css")
        //win = TranslucencyWin()
        
        
        StyleManager.addStyle("Button{thickness:10px;}Button Buton{thickness:20px;}")
        let btn = Button(100,20)
        let props = btn.skin?.style?.getStyleProperties("thickness")
        Swift.print("thickness: " + "\(props?.first?.value)")
    }
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}