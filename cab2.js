function scrollToBooking() {
    document.getElementById('bookCab').scrollIntoView({ behavior: 'smooth' });
}


document.getElementById('cabBookingForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const pickup = document.getElementById('pickup').value;
    const drop = document.getElementById('drop').value;
    const date = document.getElementById('date').value;
    const time = document.getElementById('time').value;
    const cabType = document.getElementById('cabType').value;

   
    const availableCabs = [
        { name: "Cab A", type: "Economy", price: 10 },
        { name: "Cab B", type: "Luxury", price: 20 },
        { name: "Cab C", type: "SUV", price: 15 }
    ];

    
    const results = availableCabs.filter(cab => cab.type === cabType);

    const resultsDiv = document.getElementById('cabResults');
    resultsDiv.innerHTML = ""; // Clear previous results

    if (results.length > 0) {
        results.forEach(cab => {
            const cabDiv = document.createElement('div');
            cabDiv.className = 'cab';
            cabDiv.innerHTML = `
                <h3>${cab.name}</h3>
                <p>Type: ${cab.type}</p>
                <p>Price: $${cab.price} per km</p>
                <button onclick="bookCab('${cab.name}', '${pickup}', '${drop}', '${date}', '${time}', ${cab.price})">Book Now</button>
            `;
            resultsDiv.appendChild(cabDiv);
        });
    } else {
        resultsDiv.innerHTML = `<p>No cabs available for the selected type.</p>`;
    }
});


function bookCab(name, pickup, drop, date, time, price) {
    alert(`Booking Confirmed!\n\nCab: ${name}\nPickup: ${pickup}\nDrop-off: ${drop}\nDate: ${date}\nTime: ${time}\nPrice: $${price} per km`);
}
