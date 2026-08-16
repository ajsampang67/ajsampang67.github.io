let liferayFlex = document.querySelector('#liferay');
const liferay1 = {id: 'liferay1', src: 'images/liferay/liferay1.jpg'}
const liferay2 = {id: 'liferay2', src: 'images/liferay/liferay2.jpg'}
const liferay3 = {id: 'liferay3', src: 'images/liferay/liferay3.jpg'}
const liferay4 = {id: 'liferay4', src: 'images/liferay/liferay4.jpg'}
let liferayImages = [liferay1, liferay2, liferay3, liferay4];

// Create an HTML string
let liferayHtml = '';

// Loop through each wizard
for (let image of liferayImages) {
    liferayHtml +=
        `<div class="flex-item">
            <img alt="${image.id}" src="${image.src}"
                id="${image.id}" class="img-fluid rounded-circle shadow-lg bg-white rounded float-left curve" />
        </div>`;
}

// Add the HTML to the UI
liferayFlex.innerHTML = liferayHtml;