<html>
    <section class='Content'>
        <div class="section white widthHigh">
            <div class="row container" id="content">
                <?php
                    for($i = 0; $i < count($data); $i++) {
                        $nome = $data[$i]['nome'];
                        $link = $data[$i]['link'];
                        $artista = $data[$i]['artista'];
                        $ano = $data[$i]['ano'];

                        echo "<p class='header'>".$nome. "</p>";   
                    }
                ?>
            </div>

        </div>
    </section>
</html>