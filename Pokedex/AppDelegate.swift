import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        if let window = self.window{
            window.rootViewController = injectPokemonListViewController()
            window.makeKeyAndVisible()
            window.backgroundColor = UIColor.white
        }
        return true
    }
    
    func injectPokemonListViewController() -> PokemonListViewController {
        let interactor = PokedexInteractor()
        let presenter = PokemonListPresenter(interactor: interactor)
        return PokemonListViewController(presenter: presenter)
    }
}
