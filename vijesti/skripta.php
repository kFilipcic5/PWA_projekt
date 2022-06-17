<!DOCTYPE html>
<html lang="de">
    <head>
        <!-- Karlo Filipčić -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../style.css">    
        <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.min.css">  
        <title>RP ONLINE</title>
    </head>
    <?php
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    include '../connect.php';


    $title=$_POST['title'];
    $about=$_POST['about'];
    $content = $_POST['content'];
    $category = $_POST['category'];
    $photo = $_FILES['pic']['name'];
    $date= date('d.M.Y.');
    if (isset($_POST['archive'])) $archive = 1;
    else $archive = 0;
        
    $picTempName = $_FILES['pic']['tmp_name'];
    $picExt = explode('.',$photo);
    $picActualExt = strtolower(end($picExt));


    $picNewName = uniqid('',true).".".$picActualExt;
    $img_dir = '../images/'.$picNewName;
    move_uploaded_file($picTempName, $img_dir);
    ?>
    <body>
        <header>
            <nav class="container">
                <div class="row">
                    <div class="col-lg-1"><img src="../images/rp-online-logo-logo-icon-png-svg.png" alt="logo"></div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2"><a href="../index.php">Home</a></div>
                    <div class="col-lg-2"><a href="../kategorija.php?id=sport">Sport</a></div>
                    <div class="col-lg-2"><a href="../kategorija.php?id=politik">Politik</a></div>
                    <div class="col-lg-1"><a href="../unos.html">Unos</a></div>
                    <div class="col-lg-2"><a href="login.php">Login</a></div>
                </div>
            </nav>
        </header>
        <main>
           <section class="container" id="clanak">
               <article>
                   <div class="articleHeader"><?php echo 'Home/'.$category?></div>
                   <div class="container newsContent">
                       <div class="row">
                            <div class="col-12 naslov">
                                <h1>
                                    <?php 
                                        echo $title
                                    ?>
                                </h1>
                                <p id="datum"><?php echo $date?></p>
                            </div>
                            <div class="col-12"><?php echo "<img src='../images/$picNewName' alt='slika1'>"?></div>
                            <div class="col-12 tekst">
                                <h5>
                                    <?php 
                                        echo $about
                                    ?>
                                </h5>
                                <p>
                                    <?php 
                                        echo $content
                                    ?>
                                </p>     
                            </div>
                       </div>  
                   </div>
               </article>
            </section>    	
        </main>
        <footer>
            <div class="footerDescription">
                <h5>© RP DIGITAL GMBH | ALLE RECHTE VORBEHALTEN</h5>
                <p>Content Management by InterRed</p>
            </div>
        </footer>
        <?php
                
            $query = "INSERT INTO vijesti(title, date, about, content, photo, category, archive) 
            VALUES ('$title', '$date', '$about', '$content', '$picNewName', '$category' , '$archive')";
            $result = mysqli_query($db, $query) 
            or die('Not inserted');
            mysqli_close($db);
        ?>   
    </body>
</html>