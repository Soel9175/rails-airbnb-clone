import Swal from "sweetalert2";
import 'sweetalert2/src/sweetalert2.scss';

const initSwal = () => {
  const realItemAddButton = document.getElementById("RealItemSubmitButton");
  const fakeItemAddButton = document.getElementById("FakeItemSubmitButton");

  const realBookingAddButton = document.getElementById("RealBookingSubmitButton");
  const fakeBookingAddButton = document.getElementById("FakeBookingSubmitButton");
  
  if (fakeItemAddButton) {
    fakeItemAddButton.addEventListener("click", (event) => {
      Swal.fire({
        title: 'Good Job!',
        text: "Your item has been posted",
        icon: 'success',
        showCancelButton: false,
        confirmButtonColor: '#3085d6',
        confirmButtonText: 'Great!'
      }).then((result) => {
        if (result.isConfirmed) {
          realItemAddButton.click();
        }
      });
    });
  } else if (fakeBookingAddButton) {
    fakeBookingAddButton.addEventListener("click", (event) => {
      Swal.fire({
        title: 'Its Yours!',
        text: "Your item is on the way!",
        icon: 'success',
        showCancelButton: false,
        confirmButtonColor: '#3085d6',
        confirmButtonText: 'Great!'
      }).then((result) => {
        if (result.isConfirmed) {
          realBookingAddButton.click();
        }
      });
    });
  };
};

export { initSwal };