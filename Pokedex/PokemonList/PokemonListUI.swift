import SnapKit
import RxCocoa

final class PokemonListUI: UITableView, UITableViewDataSource {
    
    var pokemonList: [String] = []
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        dataSource = self
        setupView()
    }
    
    private func setupView() {
        setupLayout()
    }
    
    private func setupLayout() {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = PokemonItemUI()
        cell.textLabel?.text = self.pokemonList[indexPath.item]
        return cell
    }
    
    func addPokemon(pokemon: String) {
        pokemonList.append(pokemon)
    }
    
    func onClick() -> ControlEvent<UITapGestureRecognizer> {
        let tapGesture = UITapGestureRecognizer()
        self.addGestureRecognizer(tapGesture)
        return tapGesture.rx.event
    }
}

final class PokemonItemUI: UITableViewCell {
    
}
