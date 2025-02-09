document.getElementById("login-form").addEventListener("submit", function (event) {
    event.preventDefault(); // Prevent form submission
  
    const email = document.getElementById("email-input").value;
    const password = document.getElementById("password-input").value;
    const errorMessage = document.getElementById("error-message");
  
    // Fetch users from localStorage
    const users = JSON.parse(localStorage.getItem("users")) || [];
  
    // Validate credentials
    const user = users.find(u => u.email === email && u.password === password);
  
    if (user) {
      // If valid, redirect to home page
      window.location.href = "home.html";
    } else {
      // If invalid, display error message
      errorMessage.textContent = "Invalid email or password. Please try again.";
      errorMessage.style.color = "red";
    }
  });
  