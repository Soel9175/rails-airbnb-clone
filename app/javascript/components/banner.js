export const smoothScroll = () => {
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
