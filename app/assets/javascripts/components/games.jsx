class Games extends React.Component {
    constructor(){
    super();
    this.state = {
      search: ''
    };
  }

  updateSearch(event) {
    this.setState({search: event.target.value.substr(0,40)});
  }

  render () {
    let filteredGames = this.props.games.filter(
        (game) => {
          return game.name.toLowerCase().indexOf(this.state.search.toLowerCase()
          ) !== -1;

        }
    );
    return (
        <div>
        <input type="text"
          placeholder="Search"
          value={this.state.search}
          onChange={this.updateSearch.bind(this)}/>
          <ul>
        {filteredGames.map(function(game){
          return(
            <li key={game.id}> <a href={"/games/" + game.id}>{game.name}</a></li>
          )
        })}
        </ul>
        </div>
    )
  }
}
