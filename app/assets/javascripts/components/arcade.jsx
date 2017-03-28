class Arcade extends React.Component {

  render () {
    return (
    <div>
      <p>{this.props.arcade.street1}</p>
      <p>{this.props.arcade.street2}</p>
      <p>{this.props.arcade.city}</p>
      <p>{this.props.arcade.state}</p>
      <p>{this.props.arcade.zip}</p>
      </div>
    )
  }
}
