import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

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
