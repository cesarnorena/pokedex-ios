import RxSwift

class PokemonListPresenter {
    
    var view: PokemonListView?
    let disposeBag = DisposeBag()
    
    var interactor: PokedexInteractor
    
    init(interactor: PokedexInteractor) {
        self.interactor = interactor
    }
    
    func setView(view: PokemonListView) {
        self.view = view
        
        interactor.getPokedexEntries()
            .do(onSuccess: { (list) in
                self.view?.addPokemons(pokemons: list)
            }).subscribe().disposed(by: disposeBag)
        
    }
}
