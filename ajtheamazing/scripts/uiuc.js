let uiucFlex = document.querySelector('.uiuc-flex');
const gradNini = {id: 'grad-sis', src: 'images/grad-sis.png'}
const me = {id: 'grad-me', src: 'images/grad-me.png'}
const parents = {id: 'grad-parents', src: 'images/grad-parents.png'}
let images = [gradNini, me, parents];

// Create an HTML string
let gradHtml = '';

// Loop through each wizard
for (let image of images) {
    gradHtml +=
        `<div class="flex-item">
            <img alt="${image.id}" src="${image.src}"
                id="${image.id}" class="img-fluid rounded-circle shadow-lg bg-white rounded float-left curve" />
        </div>`;
}

// Add the HTML to the UI
uiucFlex.innerHTML = gradHtml;