<?php 
    session_start();
    if(!(isset($_SESSION['wid']) && $_SESSION['usermode']=='WARDEN') && time()-$_SESSION[$_SESSION['wid'].'-login_time']>= 1800){
    header ('Location: ../api/logout.php');
    }

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCMS homepage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="navbar.css" />
    <!-- <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script> -->
    <style>
        ::-webkit-scrollbar {
            width: 0px;
        }

        body {
            overflow-y: auto;
            scrollbar-width: none;
            scroll-behavior: smooth;
            background-color:black;
        }

        .nav-item {
            cursor: pointer;
        }

        #content::-webkit-scrollbar {
            width: 0px;
        }

        header::before{
            content:"";
            position: absolute;
            height:100%;
            width:100%;
            z-index:-1;
            background-color:black;
        }
        header::after{
            content:"";
            position: absolute;
            height:100%;
            width:100%;
            top:0;
            z-index:-1;
            background:linear-gradient(34deg,rgba(255, 255, 255, 0.164),rgba(109, 184, 255, 0.377));
        }
    </style>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>

<body class="overflow-x-hidden gap-0 scroll-hide">
    <!-- ---navbar section -->

    <header class="sticky-top  mb-2  ">
        <nav class=" navbar navbar-expand-lg ">
            <div class="container-fluid  justify-content-between align-items-center">
            <div>
                    <div class="d-inline ml-3"><a class="navbar-brand" href="landing.html" target="content_frame" ><img src="../imgs/logo.png" alt='csmlogo' style="height:50px;width:50px;object-fit:contain"></a></div>
                </div>
                <div>
                    <div class="navbar-toggler border-0 " type="button" data-bs-toggle="offcanvas"
                        data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </div>
                    <div class=" navbar-collapse offcanvas offcanvas-end w-auto px-5 text-light  "
                        style="transition: 0.5s" data-bs-scroll="false" id="navbar">
                        <div class="offcanvas-header   w-100  justify-content-end">
                            <div type="button" class=" btn-close border-0" data-bs-dismiss="offcanvas"
                                aria-label="Close"></div>
                        </div>
                        <div class="offcanvas-body">
                            <ul class="navbar-nav  gap-2  mb-2 mb-lg-0">
                                <li class="nav-item " data-bs-dismiss="offcanvas">
                                    <a class="nav-link " aria-current="page" target="_self" href="index.php"><i
                                            class="fas fa-home"></i> Home</a>
                                </li>
                            
                                <li class="nav-item " data-bs-dismiss="offcanvas">
                                    <a class="nav-link " aria-current="page" target="content_frame"
                                        href="./profile.html"><i class="fas fa-user"></i> Profile</a>
                                </li>
                                <li class="nav-item " data-bs-dismiss="offcanvas" onclick="Logout()">
                                    <a class="nav-link " aria-current="page"><i class="fas fa-sign-out-alt"></i>
                                        Logout</a>
                                </li>
                                <li class="text-dark text-capitalize  p-0 md:hidden ">
                                    <div class="nav-link border-1 border-black">
                                        <button class="  btn btn-sm  dropdown-toggle  text-capitalize nav-link  p-0 m-0"
                                            type="button" id="alerts" data-bs-toggle="dropdown" aria-expanded="false">
                                            Problems
                                        </button>

                                        <ul class="dropdown-menu border-0 " aria-labelledby="alerts">
                                        <li class="dropdown-item nav-item  text-dark " data-bs-dismiss="offcanvas">
                                                <a class="nav-link" href="pending.html" target="content_frame">
                                                    <i class="fas fa-clock"></i> PENDING
                                                </a>
                                            </li>
                                        
                                            <li class="dropdown-item nav-item  text-dark " data-bs-dismiss="offcanvas">
                                                <a class="nav-link" href="reported.html" target="content_frame">
                                                    <i class="fas fa-clock"></i> REPORTED
                                                </a>
                                            </li>
                                            <li class="dropdown-item nav-item  text-dark " data-bs-dismiss="offcanvas">
                                                <a class="nav-link" href="solved.html" target="content_frame">
                                                    <i class="fas fa-check"></i> SOLVED
                                                </a>
                                            </li>

                                            <li class="dropdown-item nav-item  text-dark " data-bs-dismiss="offcanvas">
                                                <a class="nav-link" href="./alerts.html" target="content_frame">
                                                    <i class="fas fa-bell"></i> Alerts
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </nav>
    </header>
    <!-- navbar-section-close -->
    <div class=" relative flex h-[100vh] flex-row  w-[100vw] mt-0 overflow-y-scroll ">
        <iframe src="./warden_leftbar.html" class="max-md:hidden relative " frameborder="0" class="flex-1 max-w-m" width="200px"
            height="100%" name="sidebar"></iframe>

        <iframe src="landing.html" id="content" class="min-w-max max-md:ps-0 px-[1px]" width="100%" frameborder="0" class="flex-4"
            name="content_frame"></iframe>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

<script>
   var navLinks = document.querySelectorAll('.nav-item a');

navLinks.forEach(function (a) {
    a.addEventListener("click", function () {
        setActive(a.parentNode);
    });
});

function setActive(clickedItem) {
    // Remove 'active' class from all other <li> elements
    document.querySelectorAll('.nav-item').forEach(function (li) {
        li.classList.remove('active');
    });

    // Add 'active' class to the clicked <li> element
    clickedItem.classList.add('active');
}

    const Logout = () => {
        swal({
            text:"Sure to Logout ?",
            icon:"warning",

  buttons: {
    cancel: {
    text: "Cancel",
    value: false,
    visible: true,
    className: "bg-green-600 text-slate-900 hover:outline-none",
    closeModal: true,
  },
  confirm: {
    text: "Sure",
    value: true,
    visible: true,
    className: "bg-red-400 text-slate-800 font-bold hover:outline-none",
    closeModal: true
  }

  }
}).then((value) =>{
    if(value){
        window.location.href='../api/logout.php'
    }
});
    }


</script>

</html>