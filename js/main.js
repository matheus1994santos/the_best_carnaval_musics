const postId = document.querySelector('#Content');

const buttonNext = document.querySelector('#buttonNext');
const buttonPrev = document.querySelector('#buttonPrev');

let count = 0;

const nextCount = () => {
    if (count >= 0) {
        count++;
    }

    if (count > 27) {
        count = 0;
    }

    getPost(); // Chama a função getPost() após a atualização do contador
}

const prevCount = () => {
    if (count <= 27) {
        count--;
    }

    if (count < 0) {
        count = 27;
    }
    getPost(); 
}

async function getPost() {
    postId.innerHTML = ''; // Limpa o conteúdo antes de adicionar novos elementos

    const response = await fetch('./php/conn.php');
    const data = await response.json();

    console.log(data);

    data.forEach((post, index) => {
        if (index === count) {
            const nome = document.createElement('h1');
            const artista = document.createElement('h5');
            const ano = document.createElement('p');
            const videoOnline = document.createElement('iframe');

            console.log(index);

            nome.innerText = post.nome;
            artista.innerText = post.artista;
            ano.innerText = post.ano;
            videoOnline.setAttribute('src', post.link);
            videoOnline.setAttribute('width', '560');
            videoOnline.setAttribute('height', '315');
            videoOnline.setAttribute('frameborder', '0');
            videoOnline.setAttribute('allow', 'accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture');
            videoOnline.setAttribute('allowfullscreen', '');
            videoOnline.setAttribute('title', 'YouTube video player');
            // videoOnline.setAttribute('style', 'border: 1px solid #000000;');

            postId.appendChild(nome);
            postId.appendChild(artista);
            postId.appendChild(ano);
            // postId.appendChild(videoOnline);
        }
    });
}

getPost(); // Chama a função getPost() inicialmente

buttonNext.addEventListener('click', nextCount);
buttonPrev.addEventListener('click', prevCount);
