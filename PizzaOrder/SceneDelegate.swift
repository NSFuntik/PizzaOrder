import SwiftUI

class implementation {

	sceneWillConnectToSession {

		// Get the managed object context from the shared persistent container.
		let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

		// Create the SwiftUI view and set the context as the value for the managedObjectContext environment keyPath.
		// Add `@Environment(\.managedObjectContext)` in the views that will need the context.
		let contentView = ContentView().environment(\.managedObjectContext, context)

		// Use a UIHostingController as window root view controller.
		if let windowScene = scene as? UIWindowScene {
		    let window = UIWindow(windowScene: windowScene)
		    window.rootViewController = UIHostingController(rootView: contentView)
		    self.window = window
		    window.makeKeyAndVisible()
		}
	}


}

