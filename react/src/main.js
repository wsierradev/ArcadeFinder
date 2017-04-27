import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import ArcadeList from './components/ArcadeList';

$(function() {
  if (document.getElementById('main-app')) {
    ReactDOM.render(
      <ArcadeList />,
      document.getElementById('main-app')
    );
  };
});

let headerElement = (
  <h1 classname="smaller-text arcade-header">
"You are here, and it’s beautiful, and escaping isn’t always something bad." Delilah, <i>Firewatch</i>  </h1>
);

$(function() {
  if (document.getElementById('banana')) {
    ReactDOM.render(
      headerElement,
      document.getElementById('banana')
    );
  };
});
