document.addEventListener('DOMContentLoaded', function () {

    /* ---------- Clinic / Hospital Tabs ---------- */

    var consultTabs = document.querySelectorAll('.consult-tab');
    var consultAddress = document.getElementById('consultAddress');
    var consultBranch = document.getElementById('consultBranch');
    var consultMap = document.getElementById('consultMap');
    var consultMapLink = document.getElementById('consultMapLink');

    var consultData = {
        clinic: {
            address: 'B-19, Hil apartments, sector-13, Rohini, Delhi',
            branch: 'Rohini',
            mapQuery: 'B-19+Hil+Apartments+Sector+13+Rohini+Delhi'
        },
        hospital: {
            address: 'Cloudnine Hospital Community Centre, Plot no 2, Sector 3, Sector 3A, Rohini, Delhi, 110085',
            branch: 'Punjabi Bagh',
            mapQuery: 'Cloudnine+Hospital+Rohini+Delhi'
        }
    };

    consultTabs.forEach(function (tab) {
        tab.addEventListener('click', function () {

            var key = tab.getAttribute('data-consult-tab');
            var data = consultData[key];

            if (!data) return;

            consultTabs.forEach(function (t) {
                t.classList.remove('active');
                t.setAttribute('aria-selected', 'false');
            });

            tab.classList.add('active');
            tab.setAttribute('aria-selected', 'true');

            consultAddress.textContent = data.address;
            consultBranch.textContent = data.branch;
            consultMap.src = 'https://www.google.com/maps?q=' + data.mapQuery + '&z=15&output=embed';
            consultMapLink.href = 'https://www.google.com/maps/search/?api=1&query=' + data.mapQuery;
        });
    });

    /* ---------- Form Validation ---------- */

    var consultForm = document.getElementById('consultForm');
    var consultMsg = document.getElementById('consultMsg');

    if (!consultForm) return;

    consultForm.addEventListener('submit', function (e) {
        e.preventDefault();

        var name = document.getElementById('consultName').value.trim();
        var email = document.getElementById('consultEmail').value.trim();
        var phone = document.getElementById('consultPhone').value.trim();

        consultMsg.classList.remove('success', 'error', 'show');

        function showError(message) {
            consultMsg.textContent = message;
            consultMsg.classList.add('error', 'show');
        }

        if (name === '') return showError('Please enter your full name.');
        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) return showError('Please enter a valid email address.');
        if (phone === '') return showError('Please enter your phone number.');

        consultMsg.textContent = 'Thank you! Your appointment request has been sent. We will contact you shortly.';
        consultMsg.classList.add('success', 'show');

        consultForm.reset();
    });

});
