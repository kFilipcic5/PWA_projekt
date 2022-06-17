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
            $query = "SELECT * FROM vijesti";
            $result = mysqli_query($db, $query);
            echo '<label for="category">Odaberite vijest:</label>';
            echo '<form enctype="multipart/form-data" action="" method="GET">';
            echo '<select name="clanak" size="1">';
            while($row = mysqli_fetch_array($result)) {
                echo '<option value="'.$row['id'].'">'.$row['title'].'</option>';   
            }
            echo '</select>';
            echo '<button type="submit" style="margin:20px 0px;"> 
            Izmjeni</button>';
            
            echo '</form>';
            echo '<a href="administracija.php"><button style="margin:20px 0px;"> 
            Refresh site</button></a>';
            
            ?>
            <section id="clanak">
                <div class="articleHeader"><h3>Uredi članak</h3></div>
                <article>
                <?php
                    
                    if(isset($_GET['clanak'])){
                        $clanak = $_GET['clanak'];
                        echo'<form action="" method="POST" enctype="multipart/form-data">';
                        
                        $query = "SELECT * FROM vijesti WHERE id = $clanak";
                        $result = mysqli_query($db, $query);
                        $red = mysqli_fetch_array($result); 
                        echo '<label for="title">Naslov vijesti</label>';
                        echo '<input type="text" name="title" value="'.$red['title'].'" required>
                        <br>';
                        echo '<label>Kratki sadržaj vijesti (do 50 znakova)</label>';
                        echo '<textarea name="about" required cols="30" rows="10">'.$red['about'].'</textarea>
                        <br>';
                        echo '<label for="content">Sadržaj vijesti</label>';
                        echo '<textarea name="content" required  cols="30" rows="10">'.$red['content'].'</textarea>
                        <br>';
                        echo '<label for="pic">Slika: </label>';
                        echo $red['photo'];
                        echo '
                        <input type="file" value="'.$red['photo'].'" name="pic"/>
                        <img src="images/'.$red['photo'].'" width=100px>
                        <br><br>
                        <br>';
                        echo '<label for="category" >Kategorija vijesti</label>';
                        echo '<select name="category" size="1" value="'.$red['category'].'">';
                            echo '<option value="sport">Sport</option>';
                            echo '<option value="politik">Politik</option>';
                        echo '</select>
                        <br><br>';     
                        echo '<label>Arhiva:</label> <br>';
                        if($red['archive'] == 0) echo '<input type="checkbox" name="archive"><br><br>';
                        else echo '<input type="checkbox" name="archive" id="archive" checked/><br><br>';         
                        echo '<button type="update" name="update" value="Update">Update</button>';
                        echo '<button type="submit" name="brisanje" value="Obrisi">Brisanje</button>';       
                        echo '</form>';
                    }
                    else echo 'Odaberi stranicu';
                    ?>
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
            if(isset($_POST['brisanje'])){
                $query = "DELETE FROM vijesti WHERE id=$clanak ";
                $result = mysqli_query($db, $query);
                mysqli_close($db);
            }

            if(isset($_POST['update'])){
                $title=$_POST['title'];
                $about=$_POST['about'];
                $content = $_POST['content'];
                $category = $_POST['category'];
                $photo = $_FILES['pic']['name'];
                $photoBaza = $red['photo'];
                $date= date('d.M.Y.');
                if (isset($_POST['archive'])) $archive = 1;
                else $archive = 0;
                echo "$photo<br>";
                echo $photoBaza;
                if($photoBaza == null){
                    $img_dir = 'images/'.$photo;
                    move_uploaded_file($_FILES['pic']['tmp_name'], $img_dir);
                }
                elseif($photo == $photoBaza) $photo = $photoBaza;
                elseif($photo == null){
                    $photo = $photoBaza;
                } 
                elseif($photo != $photoBaza){
                    $picTempName = $_FILES['pic']['tmp_name'];
                    $picExt = explode('.',$photo);
                    $picActualExt = strtolower(end($picExt));

                    $picNewName = uniqid('',true).".".$picActualExt;
                    $img_dir = 'images/'.$picNewName;
                    move_uploaded_file($picTempName, $img_dir);
                    $photo = $picNewName;
                }
                
                

                $query = "UPDATE vijesti SET title='$title', date = '$date', about='$about', content='$content', 
                photo='$photo', category='$category', archive='$archive' WHERE id=$clanak ";
                $result = mysqli_query($db, $query);
                mysqli_close($db);
                
            }
            
        ?>
    </body>
</html>
