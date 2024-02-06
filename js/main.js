$(document).ready(() => {
    let setData;

    function fetchData() {
        return (fetch('./php/conn.php')
            .then(response => response.json())
            .then(data => {
                // Aqui você pode manipular os dados conforme necessário
                console.log(data);

            })
            .catch(error => console.error('Erro ao obter dados:', error)));
    }

    let num = 0;
});