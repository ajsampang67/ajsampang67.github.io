let familyFlex = document.querySelector('#family');
const nini = {name:"Leilani", relationship: "Sister", 
                location: "Chicago", desc: "Anesthesiologist", 
                img: "images/family/leilani.png"}
const momma = {name:"Flora", relationship: "Mom", 
                location: "Chicago", desc: "Businesswoman", 
                img: "images/family/mom.png"}
const pops = {name:"Alfredo", relationship: "Dad", 
                location: "Chicago", desc: "Green Thumb", 
                img: "images/family/dad.png"}
const wholefam = {name:"Alfredo", relationship: "Dad", 
                location: "Chicago", desc: "Green Thumb", 
                img: "images/family/wholefam.jpg"}
let familyMembers = [nini, momma, pops, wholefam];

// Create an HTML string
let html = '';

// Loop through each wizard
for (let member of familyMembers) {
    html +=
        `<div class="flex-item">
            <img alt="${member.relationship}" src="${member.img}" id="${member.relationship}"
                class="img-fluid rounded-circle shadow-lg bg-white rounded float-left curve" />
        </div>`;
}

// Add the HTML to the UI
familyFlex.innerHTML = html;