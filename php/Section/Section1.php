<html>
    <section class='Content'>
        <div class="section white widthHigh">
            <div class="row container" id="content">
                <?php
                    
                    $num = 0;
                    for($i = 0; $i < count($data); $i++) {
                        
                        if($i == $num){
                            $nome = $data[$i]['nome'];
                            $link = $data[$i]['link'];
                            $artista = $data[$i]['artista'];
                            $ano = $data[$i]['ano'];
                ?>

                <div class="flexRow">
                    <div class="centerButton">
                        <i class="material-icons medium white-text">keyboard_arrow_left</i>
                    </div>
                    <div class="ContentVideos">
                        <h1>
                            <?php  echo $nome?>
                        </h1>
                        <h5>
                            <?php  echo "Cantor: ".$artista?>
                        </h5>
                        <p><?php  echo "Ano: ". $ano?></p>
                        <iframe width="560" height="315" src=<?php  echo $link?> title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        <!-- <a href=<?php echo $link ?> target="_blank"> <?php echo $link ?> </a> -->
                    </div>
                    <div class="centerButton">
                        <i class="material-icons medium white-text">keyboard_arrow_right</i>
                    </div>
                </div>

            </div>

                <?php
                    }   
                }
                ?>
        </div>
    </section>
</html>