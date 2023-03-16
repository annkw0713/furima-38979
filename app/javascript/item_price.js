window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener('input', () => {
    const inputValue = priceInput.value;
    const addTaxPriceOutput = document.getElementById("add-tax-price");
    const profitOutput = document.getElementById("profit");
    addTaxPriceOutput.innerHTML = Math.floor(inputValue * 0.1).toLocaleString();
    profitOutput.innerHTML = (inputValue - (Math.floor(inputValue * 0.1))).toLocaleString();
  });
});