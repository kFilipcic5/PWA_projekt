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
                    <div class="col-lg-2"><a href="sport.html">Sport</a></div>
                    <div class="col-lg-2"><a href="politik.html">Politik</a></div>
                    <div class="col-lg-1"><a href="unos.html">Unos</a></div>
                    <div class="col-lg-2"><a href="login.php">Login</a></div>
                </div>
            </nav>
        </header>
        <main>
            <section id="clanak">
                <div class="articleHeader"><h3>LOGIN</h3></div>
                <article>
                    <form action="" method="POST">
                        <label for="username">Username:</label>
                        <input type="text" name="username" required>
                        <label for="password">Password:</label><br>
                        <input type="password" name="password" required><br>
                        <button type="submit" name="submit" style="margin:20px 0px;">Login</button>
                    </form>
               </article>
               <?php
                    include 'connect.php';
                    if (isset($_POST['submit'])){
                        $username= $_POST['username'];
                        $password= $_POST['password'];
        
                        $query="SELECT * FROM korisnik WHERE korisnicko_ime = ?";
                        $stmt=mysqli_stmt_init($db);

                        if (mysqli_stmt_prepare($stmt, $query)){
                            mysqli_stmt_bind_param($stmt,'s',$username);

                            mysqli_stmt_execute($stmt);
                            mysqli_stmt_store_result($stmt);
                        }

                        mysqli_stmt_bind_result($stmt,$id, $ime,$prezime,$korisnicko_ime,$lozinka,$razina);
                        mysqli_stmt_fetch($stmt);

                        if (mysqli_stmt_num_rows($stmt)>0){
                            
                            if(password_verify($password, $lozinka)){
                                if($razina == 1){  
                                    echo 'Dobrodošli '.$korisnicko_ime.'!<br>
                                    Pričekajte da vas usmjerimo prema administraciji';
                                    header( "refresh:3;url=administracija.php" );
                                }else echo $korisnicko_ime.", nemate dovoljna prava za 
                                pristup ovoj stranici.";
                            }else echo "Zaboravili ste lozinku?";
                        }else{
                            echo 'Neuspješan login';
                            echo "<a href='registracija.php'><button>Registracija</button></a>";
                        }
                    }
                    
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
