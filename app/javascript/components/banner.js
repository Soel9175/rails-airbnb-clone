const smoothScroll = () => {
  const element = document.getElementById("landing-button");
  const itemsTo = document.getElementById("items");
  if (element) {
    element.addEventListener('click', event => {
      itemsTo.scrollIntoView({
        block: 'start',
        behavior: 'smooth'
      });
    });
  };
};


// function to change the colour of the navbar text for the brighter colour scheme on other pages
const navChange = () => {
  if ( (window.location.pathname != "/items") && !(window.location.pathname != "/") || (window.location.pathname != "/") && !(window.location.pathname != "/items") ) {
    const elements = document.getElementsByClassName("nav-link");
    const elements_array = Array.from(elements);
    elements_array.forEach(element => element.style.color = "#E0E1E1");
  };
};
export { smoothScroll, navChange };



// if( (A && !B) || (B && !A) ) { ... }


// if ( (window.location.pathname != "/items" && !window.location.pathname !="/") || (window.location.pathname != "/" && !window.location.pathname !="/items") )
