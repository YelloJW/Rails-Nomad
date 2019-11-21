var places = require('places.js');

const placesAutocomplete = () => {
  const addressInput = document.getElementById('address-input');
  if (addressInput) {
    places({ container: addressInput });
  }
};

placesAutocomplete();
