import RxSwift

class PokedexInteractor {
    
    var pokedexEntries: [String] = [
        "👽", "🐱", "🐔", "🐶", "🦊", "🐵", "🐼", "🐷", "💩", "🐰",
        "🤖", "🦄", "🐻", "🐲", "🦁", "💀", "🐨", "🐯", "👻", "🦖",
    ]
    
    func getPokedexEntries() -> Single<[String]> {
        return Single.just(pokedexEntries)
    }
}
