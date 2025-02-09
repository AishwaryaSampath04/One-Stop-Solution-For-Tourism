// script.js

// Scroll to the search section
function scrollToSearch() {
    document.getElementById('search').scrollIntoView({ behavior: 'smooth' });
}

// Search for guides
document.getElementById('searchForm').addEventListener('submit', function (e) {
    e.preventDefault();
    const destination = document.getElementById('destination').value.trim().toLowerCase();

    // Mock data for guides
    const guides = [
        { name: "John Doe", destination: "paris", experience: 5, price: 50 },
        { name: "Jane Smith", destination: "new york", experience: 8, price: 60 },
        { name: "Carlos Diaz", destination: "barcelona", experience: 3, price: 40 }
    ];

    // Filter guides based on destination
    const filteredGuides = guides.filter(guide => guide.destination.includes(destination));
    const resultsDiv = document.getElementById('results');

    // Clear previous results
    resultsDiv.innerHTML = "";

    // Display guides
    if (filteredGuides.length > 0) {
        filteredGuides.forEach(guide => {
            const guideCard = document.createElement('div');
            guideCard.className = 'guide-card';
            guideCard.innerHTML = `
                <h3>${guide.name}</h3>
                <p>Destination: ${guide.destination}</p>
                <p>Experience: ${guide.experience} years</p>
                <p>Price: $${guide.price}/hour</p>
                <button onclick="bookGuide('${guide.name}')">Book Now</button>
            `;
            resultsDiv.appendChild(guideCard);
        });
    } else {
        resultsDiv.innerHTML = "<p>No guides found for this destination.</p>";
    }
});

// Handle guide booking
function bookGuide(guideName) {
    alert(`You have booked ${guideName}.`);
}
