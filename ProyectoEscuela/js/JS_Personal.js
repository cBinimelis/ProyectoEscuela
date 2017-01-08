$(document).ready(function () {
    $(".parallax").parallax();
    $('.dropdown-button').dropdown({
        inDuration: 300,
        outDuration: 225,
        constrain_width: false,
        hover: true,
        gutter: 0,
        belowOrigin: true,
        alignment: 'left'
    }
  );
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
    });
    $('.button-collapse').sideNav({
        edge: 'right'
    }
  );
    $('ul.tabs').tabs('select_tab', 'tab_id');
    $('.collapsible').collapsible();
    $('select').material_select();
    $('.materialboxed').materialbox();
    $('.scrollspy').scrollSpy();
});

function funciona() {
    swal('Se ve bonito', 'Tenemos una interfaz amigable y vistosa, para que te sientas cómodo con todo', 'success');
}

function vacio() {
    swal({
        title: '¡No tan rápido!',
        text: 'No puedes dejar campos vacíos.',
        type: 'error',
        confirmButtonText: '¡¡No lo haré de nuevo!!'
    });
}

function usuarioInexistente() {
    swal({
        title: '¡Ups!',
        text: 'Tu usuario no se encuentra registrado.',
        type: 'warning',
        timer: 2000,
        showConfirmButton: false
    });
}

function malaPass() {
    swal({
        title: '¡Cuidado!',
        text: 'La contraseña ingresada no es valida.',
        type: 'warning',
        timer: 2000,
        showConfirmButton: false
    });
}

function confirmarContacto() {
    swal({
        title: '¡Informacion Enviada!',
        text: 'Nos pondremos en contacto contigo a la brevedad.',
        type: 'success',
        confirmButtonText: 'Entendido, gracias.'
    });
}

function deshabilita3() {
    swal({
        title: 'You Shall not pass!',
        text: 'La cuenta seleccionada ha sido bloqueada por un administrador.',
        type: 'warning',
        timer: 4000,
        showConfirmButton: false
    });
}

function elimina3() {
    swal({
        title: '¡No puedes acceder!',
        text: 'La cuenta seleccionada ha sido eliminada',
        type: 'warning',
        timer: 3000,
        showConfirmButton: false
    });
}

function VPrevia(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {

            document.getElementById("imagen_vprevia").setAttribute("src", e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}

function Mostrar(nombre) {
    document.getElementById("nuevo_" + nombre).style.display = "initial";
}

function Ocultar(nombre) {
    document.getElementById("nuevo_" + nombre).style.display = "none";
}

function Reemplazar(txt1) {
    if (txt1 != 'undefined') {
        var txt2 = document.getElementById('<%=txt_usuario.ClientId %>').value;
        txt1.text = txt2.replace(/\D/g, '');
    }
}

function Eliminar() {
    swal({
        title: "Are you sure?",
        text: "You will not be able to recover this imaginary file!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "Yes, delete it!",
        cancelButtonText: "No, cancel plx!",
        closeOnConfirm: false,
        closeOnCancel: false
    },
function (isConfirm) {
    if (isConfirm) {
        swal("Deleted!", "Your imaginary file has been deleted.", "success");
    } else {
        swal("Cancelled", "Your imaginary file is safe :)", "error");
    }
});
}