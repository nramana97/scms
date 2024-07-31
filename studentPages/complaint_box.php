<!-- bootstrap files-->
<?php 
session_start();
// print_r($_SESSION);
?>
<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
/>
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
  crossorigin="anonymous"
/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdn.tailwindcss.com"></script>
<style>
  .swal-icon img {
    height: 80px;
    width: 80px;
    margin-inline: auto;
  }
  body{
    background:linear-gradient( 45deg,black,rgb(0, 0, 87),rgba(0, 238, 255, 0.473));

  }
  section{
    backdrop-filter:blur(8px);
    position: relative;
  }
  .one {
  position: absolute;
  height: 10rem;
  width: 10rem;
  border-radius: 50%;
  z-index: -10;
  top: 5rem;
  left: 1rem;
  background: linear-gradient(45deg, black, rgb(0, 0, 87), rgba(0, 238, 255, 1));
  animation: moving 1s ease-in-out infinite alternate 0s; /* Added animation properties here */
}

.two {
  position: absolute;
  height: 10rem;
  width: 10rem;
  border-radius: 50%;
  z-index: -10;
  top: 1rem;
  right: 1rem;
  background: linear-gradient(-45deg, black, rgb(0, 0, 87), rgba(0, 238, 255, 1));
  animation: moving 1s ease-in-out infinite alternate 1s; /* Added animation properties here */
}



@keyframes moving {
  from {
    transform: translate(0rem, 0rem);
  }
  to {
    transform: translate(1rem, 2rem);
  }
}

</style>
<div class="one"></div>
<div class="two"></div>

<section class="container rounded-3 mx-auto my-2  mb-2  bg-slate-200/10">
  <div class="container py-2 text-center">
    <h1 class=" title text-light font-mono text-3xl fw-bolder my-2 fs-3">Welcome to CMS</h1>
  </div>
  <div class="row mx-auto">
    <div
      class="col-md-6 mx-auto rounded-3 py-2 align-items-center justify-content-center complaint-box animated"
    >
      <h2 class="text-center mb-4 fs-6 text-slate-200 fw-bold">
        Submit a Complaint
      </h2>
      <form class="mt-3 py-3 rounded-2" id="form_data" method="post">
        <div class="form-group gap-1">
          <label
            for="complaintType"
            class="block mb-2 text-md font-medium text-gray-900 dark:text-white"
            >Complaint Type</label
          >
          <select
            class=" appearance-none hover:bg-slate-200/30 hover:text-slate-900 outline-none bg-slate-200/20  text-slate-200 max-sm:text-sm rounded-lg focus:ring-0 focus:border-none block w-full p-2.5   dark:placeholder-indigo-400  dark:focus:ring-blue-500 dark:focus:border-indigo-500"
            required
            id="complaintType"
          >
        
            <option class="dropdown-item " value="SELECT" selected>
              Select
            </option>
            <option class="dropdown-item " value="Electricity">
              Electricity
            </option>
            <option class="dropdown-item " value="Plumbing">Plumbing</option>
            <option class="dropdown-item " value="Cleaning">Cleaning</option>
            <option class="dropdown-item " value="Security">Security</option>
      
          </select>
        </div>
        <div class="form-group">
          <label
            for="complaintDetails"
            class="block mb-2 max-sm:text-sm text-md font-medium text-indigo-900 dark:text-white"
            >Complaint Details</label
          >
          <textarea
            id="complaintDetails"
            rows="4"
            class="block p-2.5 bg-slate-200/20 w-full text-sm hover:bg-slate-200/30 text-slate-900 rounded-lg outline-none border-none  focus:bg-slate-20/30  dark:border-indigo-600 dark:placeholder-indigo-200 dark:text-white dark:focus:ring-indigo-500 dark:focus:border-indigo-500"
            placeholder="Describe your problem..."
          ></textarea>
        </div>
        <div class="d-grid mt-3 justify-content-center">
          <button
            id="submit"
            type="submit"
            class="px-5 bg-sky-600 py-2 transitio- rounded-3 text-slate-300 hover:bg-indigo-800 hover:text-slate-200 fw-bolder position-relative btn-submit"
          >
            Submit
          </button>
        </div>
      </form>
    </div>
  </div>
</section>
<script>
  $(document).ready(() => {
    $("#submit").click((e) => {
      e.preventDefault();
      const compType = $("#complaintType").val();
      const complaint = $("#complaintDetails").val();
      if (!(compType === "SELECT" || complaint === "")) {
        $.ajax({
          type: "POST",
          url: "../api/student_api/newComplaint.php",
          data: {
            complaintType: compType,
            complaintDetails: complaint,
          },
          dataType: "json",
          beforeSend: () => {
            // Show loading indicator here
            swal({
              title: "Registering....",
              allowEscapeKey: false,
              allowOutsideClick: false,
              button: false,
              icon: "../imgs/loading.svg",
            });
          },
          complete: () => {
            swal.close();
          },
          success: function (data) {
            swal({
              text: data.text,
              icon: data.icon,
              timer: 1200,
              button: false,
            });
            $("#complaintType").val("");
            $("#complaintDetails").val("");
          },
          error: function (err) {
            window.parent.console.log(err);
          },
        });
      }
    });
  });
</script>
