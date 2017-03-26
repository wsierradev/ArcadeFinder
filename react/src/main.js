import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

$(function() {
  if (document.getElementById('main-app')) {
    ReactDOM.render(
      <Testtest />,
      document.getElementById('main-app')
    );
  };
});
