$(document).ready(() => {
    let num;

    num = 0;

    $.ajax({
        type: "POST",
        url: "php/Section/Section1.php",
        data: { dado: num },
        success: function (resposta) {
            console.log("Resposta do PHP:", resposta);
        }
    });
});