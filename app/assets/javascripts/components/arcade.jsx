class Arcade extends React.Component {

  render () {
    return (
    <div>
      <p>{this.props.arcade.street1}</p>
      <p>{this.props.arcade.city}, {this.props.arcade.state} {this.props.arcade.zip}</p>
      </div>
    )
  }
}
