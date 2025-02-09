// Store users in localStorage (to persist user data temporarily)
document.getElementById("signup-form").addEventListener("submit", function (event) {
    event.preventDefault(); // Prevent default form submission
  
    const name = document.getElementById("name-input").value;
    const email = document.getElementById("email-input").value;
    const password = document.getElementById("password-input").value;
    const errorMessage = document.getElementById("error-message");
  
    // Get users from localStorage or initialize an empty array
    const users = JSON.parse(localStorage.getItem("users")) || [];
  
    // Check if the email is already registered
    const isExistingUser = users.some(user => user.email === email);
  
    if (isExistingUser) {
      errorMessage.textContent = "Email is already registered. Please use a different email.";
      errorMessage.style.color = "red";
    } else {
      // Add new user to the array and save to localStorage
      users.push({ name, email, password });
      localStorage.setItem("users", JSON.stringify(users));
  
      // Redirect to login page
      alert("Signup successful! Redirecting to login page...");
      window.location.href = "login.html";
    }
  });
  