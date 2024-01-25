$(document).ready(() => {
    function fetchData() {
        let dataDB;
        return (fetch('./php/conn.php')
            .then(response => response.json())
            .then(data => {
                // Aqui você pode manipular os dados conforme necessário
                dataDB = data;
                return dataDB;
            })
            .catch(error => console.error('Erro ao obter dados:', error)));
    }

    const data = fetchData();
    console.log(data);
});