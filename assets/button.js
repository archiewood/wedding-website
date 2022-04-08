
// Get list and button
const next_button = document.querySelector('a.button')

// Hide nav and apply toggle
const hideButton = () => {
    if (document.body.clientWidth < 640) {
        next_button.style.visibility = 'visible';
    } else {
        next_button.style.visibility = 'hidden';
    }
}

hideButton()

// Check on resize if to collapse nav
window.addEventListener('resize', () => {
    hideButton()
})
