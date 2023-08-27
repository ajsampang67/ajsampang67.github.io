let alyssaFlex = document.querySelector('.alyssa-flex');
const alyssa1 = {id: 'alyssa1', src: 'images/alyssa/a1.jpg'}
const alyssa2 = {id: 'alyssa2', src: 'images/alyssa/a2.jpg'}
const alyssa3 = {id: 'alyssa3', src: 'images/alyssa/a3.jpg'}
const alyssa4 = {id: 'alyssa4', src: 'images/alyssa/a4.jpg'}
let alyssaImages = [alyssa1, alyssa2, alyssa3, alyssa4];

// Create an HTML string
let alyssaHtml = '';

// Loop through each wizard
for (let image of alyssaImages) {
    alyssaHtml +=
        `<div class="flex-item">
            <img alt="${image.id}" src="${image.src}"
                id="${image.id}" class="img-fluid rounded-circle shadow-lg bg-white rounded float-left curve" />
        </div>`;
}

// Add the HTML to the UI
alyssaFlex.innerHTML = alyssaHtml;