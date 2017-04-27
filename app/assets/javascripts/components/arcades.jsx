class Arcades extends React.Component {
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
  let filteredArcades = this.props.arcades.filter(
      (arcade) => {
        return arcade.name.toLowerCase().indexOf(this.state.search.toLowerCase()
        ) !== -1;

      }
  );
  filteredArcades.sort(function (a, b) {
  return a.state > b.state;
});
  let arcadeStates = filteredArcades.map(arcade => {
        return arcade.state
      }
  );
    return (
    <div>
    <input type="text"
      placeholder="Search"
      value={this.state.search}
      onChange={this.updateSearch.bind(this)}/>
      <ul>

    {filteredArcades.map(arcade => {
          return([
          <h3 className="smaller-text">{arcade.state}</h3>,
          <li key={arcade.id}> <a href={"/arcades/" + arcade.id}> <button className="react-buttons" type="button">{arcade.name}</button></a></li>
          ])
        })
    }
        </ul>
        </div>
    )
  }
}
