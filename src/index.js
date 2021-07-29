import './scss/style.scss';

const weatherForm = document.getElementById('weather-form');
const apiKey = 'c20d664fe15511ff6b176f9e20df512f';

weatherForm.addEventListener('submit', async (event) => {
  event.preventDefault();

  const formData = new FormData(weatherForm);
  const location = formData.get('location');
  const unit = formData.get('unit');
  const endpoint = `http://api.openweathermap.org/data/2.5/weather?q=${location}&APPID=${apiKey}&units=${unit}`;

  try {
    await fetch(endpoint)
    .then((response) => response.json())
    .then((data) => {
      const { name } = data;
      const { description } = data.weather[0];
      const { temp, humidity } = data.main;
      const { speed } = data.wind;
      const unitSymbol = unit === 'metric' ? '°C' : '°F';
      const windSpeed = unit === 'metric' ? 'km/h' : 'm/s';

      document.querySelector('.city').innerText = `Weather in ${name}`;
      document.querySelector(
        '.description',
      ).innerText = `Cloudy: ${description}`;
      document.querySelector('.temp').innerText = temp + unitSymbol;
      document.querySelector(
        '.humidity',
      ).innerText = `Humidity: ${humidity}%  `;
      document.querySelector(
        '.wind',
      ).innerText = `Wind speed ${speed}${windSpeed}`;
      document.querySelector('.weather').classList.remove('Loading');
      document.body.style.backgroundImage = `url('http://source.unsplash.com/1600x900/?${name} ')`;
    });
    } catch(e) {
      console.log(e )
    }
  // await fetch(endpoint)
  //   .then((response) => response.json())
  //   .then((data) => {
  //     const { name } = data;
  //     const { description } = data.weather[0];
  //     const { temp, humidity } = data.main;
  //     const { speed } = data.wind;
  //     const unitSymbol = unit === 'metric' ? '°C' : '°F';
  //     const windSpeed = unit === 'metric' ? 'km/h' : 'm/s';

    //   document.querySelector('.city').innerText = `Weather in ${name}`;
    //   document.querySelector(
    //     '.description',
    //   ).innerText = `Cloudy: ${description}`;
    //   document.querySelector('.temp').innerText = temp + unitSymbol;
    //   document.querySelector(
    //     '.humidity',
    //   ).innerText = `Humidity: ${humidity}%  `;
    //   document.querySelector(
    //     '.wind',
    //   ).innerText = `Wind speed ${speed}${windSpeed}`;
    //   document.querySelector('.weather').classList.remove('Loading');
    //   document.body.style.backgroundImage = `url('http://source.unsplash.com/1600x900/?${name} ')`;
    // });
});
