<!DOCTYPE html>
<html lang="de">
    <head>
        <!-- Karlo Filipčić -->
        <meta charset="utf-8">
			
        <link rel="stylesheet" href="style.css">    
        <link rel="stylesheet" href="bootstrap-5.1.3-dist/css/bootstrap.min.css">  
        <title>RP ONLINE</title>
    </head>

    <body>
        <header>
            <nav class="container">
                <div class="row">
                    <div class="col-lg-1"><img src="images/rp-online-logo-logo-icon-png-svg.png" alt="logo"></div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2"><a href="index.php">Home</a></div>
                    <div class="col-lg-2"><a href="kategorija.php?id=sport">Sport</a></div>
                    <div class="col-lg-2"><a href="kategorija.php?id=politik">Politik</a></div>
                    <div class="col-lg-1"><a href="unos.html">Unos</a></div>
                    <div class="col-lg-2"><a href="login.php">Login</a></div>
                </div>
            </nav>
        </header>
        <main>
            <?php include 'connect.php'; ?> 
           <section class="container" id="sport">
           <?php
                $query = "SELECT * FROM vijesti WHERE archive=0 AND category='Sport' LIMIT 3";
                $result = mysqli_query($db, $query);
                echo '<article>';
                echo '<div class="articleHeader"><a href="sport.html">Sport</a></div>';
                while($row = mysqli_fetch_array($result)) {
                    echo'<div class="container articleContent">';
                        echo '<div class="row">';
                            echo '<div class="col-lg-5"><img src="images/'.$row['photo'] .'" alt="'.$row['photo'].'"></div>';
                            echo '<div class="col-lg-7">';
                                echo '<a href="clanak.php?id='.$row['id'].'"><h2>'.$row['title'].'</h2></a>';
                                   echo '<p>'.$row['about'].'</p>';
                            echo '</div>';
                        echo '</div>';
                    echo '</div>';
                
                }
                echo '</article>';
            ?>
           </section>
           <section class="container" id="sport">
           <?php
                $query = "SELECT * FROM vijesti WHERE archive=0 AND category='Politik' LIMIT 3";
                $result = mysqli_query($db, $query);
                echo '<article>';
                echo '<div class="articleHeader"><a href="sport.html">Politik</a></div>';
                while($row = mysqli_fetch_array($result)) {
                    echo'<div class="container articleContent">';
                        echo '<div class="row">';
                            echo '<div class="col-lg-5"><img src="images/'.$row['photo'] .'" alt="'.$row['photo'].'"></div>';
                            echo '<div class="col-lg-7">';
                                echo '<a href="clanak.php?id='.$row['id'].'"><h2>'.$row['title'].'</h2></a>';
                                   echo '<p>'.$row['about'].'</p>';
                            echo '</div>';
                        echo '</div>';
                    echo '</div>';
                
                }
                echo '</article>';
                mysqli_close($db);
            ?>
           </section>     
        </main>
        <footer>
            <div class="footerDescription">
                <h5>© RP DIGITAL GMBH | ALLE RECHTE VORBEHALTEN</h5>
                <p>Content Management by InterRed</p>
            </div>
        </footer>
    </body>
</html>