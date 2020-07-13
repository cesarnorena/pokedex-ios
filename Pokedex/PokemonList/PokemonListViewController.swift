import UIKit
import RxCocoa
import RxSwift

protocol PokemonListView {
    func addPokemons(pokemons: [String])
    func onClick() -> Observable<Bool>?
}

final class PokemonListViewController: UIViewController, PokemonListView {
    
    var ui: PokemonListUI? { return view as? PokemonListUI }
    var presenter: PokemonListPresenter?
    
    convenience init(presenter: PokemonListPresenter) {
        self.init()
        self.presenter = presenter
    }
    
    override func loadView() {
        self.view = PokemonListUI()
    }
    
    override func viewDidLoad() {
        presenter?.setView(view: self)
    }
    
    func addPokemons(pokemons: [String]) {
        for pokemon in pokemons {
            ui?.addPokemon(pokemon: pokemon)
        }
    }
    
    func onClick() -> Observable<Bool>? {
        return ui?.onClick().flatMap { (event) in
            Observable.just(true)
        }
    }
}
