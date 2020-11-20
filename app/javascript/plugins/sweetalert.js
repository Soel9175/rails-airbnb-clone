import Swal from "sweetalert2";
import 'sweetalert2/src/sweetalert2.scss';

const initSwal = () => {
  const realButton = document.getElementById("RealItemSubmitButton");
  const fakeButton = document.getElementById("FakeItemSubmitButton");
  if (fakeButton) {
    fakeButton.addEventListener("click", (event) => {
      Swal.fire({
        title: 'Good Job!',
        text: "Your item has been posted",
        icon: 'success',
        showCancelButton: false,
        confirmButtonColor: '#3085d6',
        confirmButtonText: 'Great!'
      }).then((result) => {
        if (result.isConfirmed) {
          realButton.click();
        }
      });
    });
  };
};

export { initSwal };