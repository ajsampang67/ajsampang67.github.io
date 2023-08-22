let familyFlex = document.querySelector('.family-flex');
const nini = {name:"Leilani", relationship: "Sister", location: "Chicago", desc: "Anesthesiologist", img: "images/leilani.png"}
const momma = {name:"Flora", relationship: "Mom", location: "Chicago", desc: "Businesswoman", img: "images/mom.png"}
const pops = {name:"Alfredo", relationship: "Dad", location: "Chicago", desc: "Green Thumb", img: "images/dad.png"}
let familyMembers = [nini, momma, pops];

// Create an HTML string
let html = '';

// Loop through each wizard
for (let member of familyMembers) {
    html +=
        `<div class="flex-item">
            <img alt="${member.relationship}" src="${member.img}" id="${member.relationship}"
                class="img-fluid rounded-circle shadow-lg bg-white rounded float-left curve" />
            <h3>${member.name}</h3>
            <div class="desc">
                <p>
                ${member.relationship}
                <br/>${member.location}
                <br/>${member.desc}
                </p>
            </div>
        </div>`;
}

// Add the HTML to the UI
familyFlex.innerHTML = html;