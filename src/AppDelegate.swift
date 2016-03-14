import Cocoa
/**
 * This is the main class for the application
 */
@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    weak var window: NSWindow!/*<--This is here only so that the compiler wont throw an error*/
    var win:NSWindow?/*<--The window must be a class variable, local variables doesnt work*/
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        StyleManager.addStylesByURL("~/Desktop/css/window.css")
        win = Win(1000,500)
        NSApp.windows[0].close()/*<--Close the initial non-optional default window*/
    }
    func applicationWillTerminate(aNotification: NSNotification) {
        print("Good-bye")
    }
}
