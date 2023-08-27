let deloitteFlex = document.querySelector('.deloitte-flex');
const deloitte1 = {id: 'deloitte1', src: 'images/deloitte/d1.jpg'}
const deloitte2 = {id: 'deloitte2', src: 'images/deloitte/d2.jpg'}
const deloitte3 = {id: 'deloitte3', src: 'images/deloitte/d3.jpg'}
const deloitte4 = {id: 'deloitte4', src: 'images/deloitte/d4.jpg'}
let deloitteImages = [deloitte1, deloitte2, deloitte3, deloitte4];

// Create an HTML string
let deloitteHtml = '';

// Loop through each wizard
for (let image of deloitteImages) {
    deloitteHtml +=
        `<div class="flex-item">
            <img alt="${image.id}" src="${image.src}"
                id="${image.id}" class="img-fluid rounded-circle shadow-lg bg-white rounded float-left curve" />
        </div>`;
}

// Add the HTML to the UI
deloitteFlex.innerHTML = deloitteHtml;