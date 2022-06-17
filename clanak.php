<!DOCTYPE html>
<html lang="de">
    <head>
        <!-- Karlo Filipčić -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
           <?php 
                include 'connect.php';
                $clanakID = $_GET['id']; 
           ?> 
           <section class="container">
           <?php
                $query = "SELECT * FROM vijesti WHERE id ='$clanakID'";
                $result = mysqli_query($db, $query);
                $row = mysqli_fetch_array($result);
                echo '<article>';
                echo '<div class="articleHeader"><p><a href="index.php">Home</a>/<a href="../kategorija.php?id='.$row['category'].'"p">'.$row['category'].'</a></p></div>';
                    echo'<div class="container articleContent">';
                        echo '<div class="row">';
                            echo '<div class="col-12 naslov">';
                                echo '<h1>'.$row['title'].'</h1>';
                                echo '<p id="datum">'.$row['date'].'</p>';
                            echo '</div>';
                            echo '<div class="col-12" id="clanakSlika"><img src="images/'.$row['photo'].'" alt="'.$row['photo'].'"></div>';
                            echo '<div class="col-12">';
                                echo '<h5 style="margin:20px 0px;">'.$row['about'].'</h5>';
                                echo '<p>'.$row['content'].'</p>';
                            echo '</div>';
                        echo '</div>';
                    echo '</div>'; 
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