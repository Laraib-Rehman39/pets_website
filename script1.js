//to close form
function closeForm() {
  const form = document.getElementById("form");
  form.style.display = "none"; // Hides the form
}


// Function to show the popup modal
// Show the popup
function showPopup() {
  document.getElementById("popup").style.display = "flex";
}

// Close the popup
function closePopup() {
  document.getElementById("popup").style.display = "none";
}

// Redirect to the main home page
function redirectToHome() {
  window.location.href = "categories.html"; // Change to your home page URL
}





// For Dog SlideBar
function DogSlider()
{
const slider = document.querySelector(".dog_slider"); // Select single slider container
const leftButton = document.querySelector(".d-b-l");
const rightButton = document.querySelector(".d-b-r");

// Calculate the width of a single card (including margin/gap)
const cardWidth = document.querySelector(".dog_img").offsetWidth + 20; // 20px gap

// Move slider left
leftButton.addEventListener("click", () => {
    slider.scrollBy({
        left: -cardWidth, // Move one card left
        behavior: "smooth",
    });
});

// Move slider right
rightButton.addEventListener("click", () => {
    slider.scrollBy({
        left: cardWidth, // Move one card right
        behavior: "smooth",
    });
});
}


// For Cat SlideBar
function CatSlider()
{
const slider = document.querySelector(".cat_slider"); // Select single slider container
const leftButton = document.querySelector(".c-b-l");
const rightButton = document.querySelector(".c-b-r");

// Calculate the width of a single card (including margin/gap)
const cardWidth = document.querySelector(".dog_img").offsetWidth + 20; // 20px gap

// Move slider left
leftButton.addEventListener("click", () => {
    slider.scrollBy({
        left: -cardWidth, // Move one card left
        behavior: "smooth",
    });
});

// Move slider right
rightButton.addEventListener("click", () => {
    slider.scrollBy({
        left: cardWidth, // Move one card right
        behavior: "smooth",
    });
});
}

// For Parrot SlideBar
function ParrotSlider()
{
const slider = document.querySelector(".parrot_slider"); // Select single slider container
const leftButton = document.querySelector(".p-b-l");
const rightButton = document.querySelector(".p-b-r");

// Calculate the width of a single card (including margin/gap)
const cardWidth = document.querySelector(".dog_img").offsetWidth + 20; // 20px gap

// Move slider left
leftButton.addEventListener("click", () => {
    slider.scrollBy({
        left: -cardWidth, // Move one card left
        behavior: "smooth",
    });
});

// Move slider right
rightButton.addEventListener("click", () => {
    slider.scrollBy({
        left: cardWidth, // Move one card right
        behavior: "smooth",
    });
});
}

// For calling functions
CatSlider();
DogSlider();
ParrotSlider();

document.addEventListener("DOMContentLoaded", function () {
  console.log("DOM fully loaded!");

  function eventsForForm() {
    console.log("Initializing event listeners...");

    // Login form visibility
    document.querySelector('.login').addEventListener('click', () => {
      console.log('Sign In button clicked!');
      document.querySelector('.form-container').style.display = 'flex';
    });

    // Register form visibility
    document.querySelectorAll('.signup').forEach(signUpBtn => {
      signUpBtn.addEventListener('click', () => {
        console.log('Sign Up button clicked!');
        document.querySelector('.form-container').style.display = 'none';
        document.querySelector('.form-container1').style.display = 'flex';
      });
    });

    // Revisibility of the Sign In form
    document.querySelector('.login').addEventListener('click', () => {
      console.log('Sign In button (inside Sign Up) clicked!');
      document.querySelector('.form-container1').style.display = 'none';
      document.querySelector('.form-container').style.display = 'flex';
    });
  }
  document.addEventListener('DOMContentLoaded', () => {
    // Close button for Sign In form
    document.querySelector('.cross').addEventListener('click', () => {
      console.log('Close button (Sign In) clicked!');
      document.querySelector('.form-container').style.display = 'none';
    });
  
    // Close button for Sign Up form
    document.querySelector('.cross1').addEventListener('click', () => {
      console.log('Close button (Sign Up) clicked!');
      document.querySelector('.form-container1').style.display = 'none';
    });
  });

  // Initialize event listeners
  eventsForForm();
});

function navigateToSection(sectionId) {
  // Get the section element by ID
  const section = document.getElementById(sectionId);
  
  // Scroll to the section smoothly
  section.scrollIntoView({
      behavior: 'smooth',
      block: 'start' // Adjusts scroll to align at the top
  });
}


